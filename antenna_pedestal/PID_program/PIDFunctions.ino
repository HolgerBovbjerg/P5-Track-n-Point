// =============================================== INITIALISE =============================================== //
// Returns the pedestal to default position
void Initialise() {
  unsigned long lastTime = millis();
  unsigned long currentTime = millis();

  while (digitalRead(HallStand) == HIGH) {
    analogWrite(C1outputPin, 0);
    analogWrite(C2outputPin, 100);
    digitalWrite(MotorForSmall, LOW);
    digitalWrite(MotorBackSmall, HIGH);
    digitalWrite(MotorForLarge, LOW);
    digitalWrite(MotorBackLarge, HIGH);
    //Serial.println("Horizontal align");
    //    Serial.print(digitalRead(MotorForSmall));
    //    Serial.print(" ; ");
    //    Serial.print(digitalRead(MotorBackSmall));
    //    Serial.print(" ; ");
    //    Serial.print(digitalRead(MotorForLarge));
    //    Serial.print(" ; ");
    //    Serial.print(digitalRead(MotorBackLarge));
    //    Serial.print(" ; ");
    //    Serial.print(analogRead(C1outputPin));
    //    Serial.print(" ; ");
    //    Serial.println(analogRead(C2outputPin));
  }

  //Serial.println("Horizontal zero position found");
  encCounter = 0;
  analogWrite(C1outputPin, 0);
  analogWrite(C2outputPin, 60);
  digitalWrite(MotorForSmall, HIGH);
  digitalWrite(MotorBackSmall, LOW);
  digitalWrite(MotorForLarge, HIGH);
  digitalWrite(MotorBackLarge, LOW);
  delay(1000);
  analogWrite(C2outputPin, 0);


  lastTime = millis();
  currentTime = millis();

  //  // MOVE STEPPER UP IF UPPER HALL SENSOR HAS NOT BEEN REACHED
  //  if (digitalRead(HallStepUp) == HIGH) {
  //    digitalWrite(StepDir, HIGH);
  //    while (digitalRead(HallStepUp) == HIGH) {
  //      current_time = millis();
  //      if ((current_time - last_timestep) >= T_step) {
  //        digitalWrite(StepClock, !digitalRead(StepClock));
  //        last_timestep = millis();
  //      }
  //    }
  //  }
  //  // MOVE DOWN UNTIL LOWER HALL SENSOR IS REACHED
  //  digitalWrite(StepDir, LOW);
  //  while (digitalRead(HallStepBot) == HIGH) {
  //    current_time = millis();
  //    if ((current_time - last_timestep) >= T_step) {
  //      digitalWrite(StepClock, !digitalRead(StepClock));
  //      last_timestep = millis();
  //    }
  //  }
  //  // MOVE DOWN FOR EXTRA COUNTS
  //  int count = 0;
  //  while (count < 240) {
  //    current_time = millis();
  //    if ((current_time - last_timestep) >= T_step) {
  //      digitalWrite(StepClock, !digitalRead(StepClock));
  //      last_timestep = millis();
  //      if (digitalRead(StepClock) == LOW) count++;
  //    }
  //  }
  //  digitalWrite(StepDir, HIGH);

  stepPos = 0;
  standIsZero = 1;
  prevNextCode = 0;
  store = 0;
  delay(2000);
}

// =============================================== HALL COUNTER SMALL =============================================== //
// Tracks hall sensor for the small motor
void HallSmallCounterFunc() {
  // Read the current state of inputCLK
  currentHallSmallStateCLK = digitalRead(HallSmall);

  // If the previous and the current state of the inputCLK are different then a pulse has occured
  if ((currentHallSmallStateCLK != previousHallSmallStateCLK ) && digitalRead(HallSmall) == LOW)
  {
    if (standDir == 1 && hallTracking == 1) pedPos += MSmallInt;
    else if (standDir == 0 && hallTracking == 1) pedPos -= MSmallInt;
  }
  // Update previousStateCLK with the current state
  previousHallSmallStateCLK = currentHallSmallStateCLK;


  currentHallSmallCounter = HallSmallCounter;

  previousHallSmallCounter = currentHallSmallCounter;

  //  Serial.print("Ped. pos: ");
  //  Serial.print(pedPos);
  //  Serial.print("  ;  ");
}

// =============================================== HALL TRACKER STEPPER =============================================== //
// Functions that track hall sensors for the stepper motor
void HallStepper() {
  // FOR THE UPPER HALL SENSOR
  currentHallStepUp = digitalRead(HallStepUp);

  // If upper hall sensor has changed input to LOW, set vertical position to 700.
  if (currentHallStepUp != previousHallStepUp) {
    if (currentHallStepUp == 0) {
      stepPos = 730;
    }
    previousHallStepUp = currentHallStepUp;
  }

  // FOR THE LOWER HALL SENSOR
  currentHallStepBot = digitalRead(HallStepBot);

  // If bottom hall sensor has changed input to LOW, set vertical position to 289.
  if (currentHallStepBot != previousHallStepBot) {
    if (currentHallStepBot == 0) {
      stepPos = 250;
    }
    previousHallStepBot = currentHallStepBot;
  }
}

// =============================================== SIMULATE ERROR =============================================== //
// Function that converts joystick input into vertical and horizontal
void ErrorSim() {
//  int sim_setpoint_horz = analogRead(A0);
//  setpoint_horz = mapfloat(sim_setpoint_horz, 0, 1023, 0, 359);
//
//  if ((current_time - last_time_step_error) > 50) {
//    int sim_setpoint_horz = analogRead(A1);
//    setpoint_vert = (map(sim_setpoint_horz, 0, 1023, 0, 900));
//    last_time_step_error = millis();
//  }

  //    Serial.print("Setpoint: ");
  //    Serial.print(setpoint_horz);
  //    Serial.println("  ;  ");

  long sim_setpoint_vert = analogRead(xIn);
  long sim_setpoint_horz = analogRead(yIn);
  
  if (sim_setpoint_vert < 540 && sim_setpoint_vert > 470) setpoint_vert = 0;
  else if (sim_setpoint_vert >= 540) setpoint_vert = map(sim_setpoint_vert, 540, 1023, -1, -10);
  else if (sim_setpoint_vert <= 470) setpoint_vert = map(sim_setpoint_vert, 470, 0, 1, 10);
  
  if (sim_setpoint_horz < 540 && sim_setpoint_horz > 470) setpoint_horz = 0;
  else if (sim_setpoint_horz >= 540) setpoint_horz = map(sim_setpoint_horz, 540, 1023, -1, -170);
  else if (sim_setpoint_horz <= 470) setpoint_horz = map(sim_setpoint_horz, 470, 0, 1, 170);
  
  
}

// =============================================== ENCODER COUNT IMPROVED =============================================== //
// Counts encoder steps
void EncoderCount() {
  static int8_t rot_enc_table[] = {0, 1, 1, 0, 1, 0, 0, 1, 1, 0, 0, 1, 0, 1, 1, 0};

  prevNextCode <<= 2;
  if (digitalRead(inputDT)) prevNextCode |= 0x02;
  if (digitalRead(inputCLK)) prevNextCode |= 0x01;
  prevNextCode &= 0x0f;

  // If valid then store as 16 bit data.
  if  (rot_enc_table[prevNextCode] ) {
    store <<= 4;
    store |= prevNextCode;
    //if (store==0xd42b) return 1;
    //if (store==0xe817) return -1;
    if ((store & 0xff) == 0x2b) {
      pedPos += 1;
      if (pedPos > 359) pedPos = 0;
      if (pedPos < 0) pedPos = 359;
      //Serial.println(pedPos);
    }
    if ((store & 0xff) == 0x17) {
      pedPos -= 1;
      if (pedPos > 359) pedPos = 0;
      if (pedPos < 0) pedPos = 359;
      //Serial.println(pedPos);
    }
    
  }


}

// =============================================== MAPFLOAT =============================================== //
// Map function that outputs a float
float mapfloat(long x, long in_min, long in_max, long out_min, long out_max) {
  return (float)(x - in_min) * (out_max - out_min) / (float)(in_max - in_min) + out_min;
}

// =============================================== GET ERROR =============================================== //
// Initiates SPI transaction and processes received data to get the error
void GetError(){
  SPI.beginTransaction(SPISettings(16000000, MSBFIRST, SPI_MODE0));
  for (int i=0;i<=5;i++){
    ErrorArr[i] = SPI.transfer(0);
  }
  SPI.endTransaction();

  int DFT1 = atan2(ErrorArr[0],ErrorArr[1]);
  int DFT2 = atan2(ErrorArr[2],ErrorArr[3]);
  int DFT3 = atan2(ErrorArr[4],ErrorArr[5]);
}

// =============================================== SEARCH =============================================== //
// Function to spin around and put antennas at 45 degree in order to search for a signal
void Search() {
  
}
