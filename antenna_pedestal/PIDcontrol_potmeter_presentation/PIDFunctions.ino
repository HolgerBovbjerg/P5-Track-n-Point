// =============================================== INITIALISE =============================================== //
// Returns the pedestal to default position
void Initialise() {
  unsigned long lastTime = millis();
  unsigned long currentTime = millis();

  //analogWrite(C1outputPin, 200);
  analogWrite(C2outputPin, 70);

  Serial.println("Forward");

  //digitalWrite(MotorForSmall, LOW);
  //digitalWrite(MotorBackSmall, HIGH);
  digitalWrite(MotorForLarge, LOW);
  digitalWrite(MotorBackLarge, HIGH);

  int found = 0;

  while (found < 20) {
    if (digitalRead(HallStand) == LOW) found++;
    else found = 0;
  }

  found = 0;

  //delay(500);

  //Serial.println("Pausing");

  analogWrite(C1outputPin, 0);
  analogWrite(C2outputPin, 0);
  //digitalWrite(MotorForLarge, LOW);
  //digitalWrite(MotorBackLarge, LOW);
  delay(1000);

  //Serial.println("Reversing");

  digitalWrite(MotorForSmall, HIGH);
  digitalWrite(MotorBackSmall, LOW);

  analogWrite(C1outputPin, 120);


  while (found < 20){
      if (digitalRead(HallStand) == LOW) found++;
      else found = 0;
  }

  //Serial.println("Found");

  analogWrite(C1outputPin, 0);
  analogWrite(C2outputPin, 0);

  digitalWrite(MotorForSmall, LOW);
  digitalWrite(MotorBackSmall, LOW);
  digitalWrite(MotorForLarge, LOW);
  digitalWrite(MotorBackLarge, LOW);

  //Serial.println("Horizontal zero position found");
  encCounter = 0;
  delay(500);

  //Serial.println("Stopped");

  lastTime = millis();
  currentTime = millis();

  // MOVE STEPPER UP IF UPPER HALL SENSOR HAS NOT BEEN REACHED
  if (digitalRead(HallStepUp) == HIGH) {
    digitalWrite(StepDir, HIGH);
    while (digitalRead(HallStepUp) == HIGH) {
      current_time = millis();
      if ((current_time - last_timestep) >= T_step) {
        digitalWrite(StepClock, !digitalRead(StepClock));
        last_timestep = millis();
      }
    }
  }
  // MOVE DOWN UNTIL LOWER HALL SENSOR IS REACHED
  digitalWrite(StepDir, LOW);
  while (digitalRead(HallStepBot) == HIGH) {
    current_time = millis();
    if ((current_time - last_timestep) >= T_step) {
      digitalWrite(StepClock, !digitalRead(StepClock));
      last_timestep = millis();
    }
  }
  // MOVE DOWN FOR EXTRA COUNTS
  int count = 0;
  while (count < 460) {
    current_time = millis();
    if ((current_time - last_timestep) >= T_step) {
      digitalWrite(StepClock, !digitalRead(StepClock));
      last_timestep = millis();
      if (digitalRead(StepClock) == LOW) count++;
    }
  }
  digitalWrite(StepDir, HIGH);

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
      stepPos = 760;
    }
    previousHallStepUp = currentHallStepUp;
  }

  // FOR THE LOWER HALL SENSOR
  currentHallStepBot = digitalRead(HallStepBot);

  // If bottom hall sensor has changed input to LOW, set vertical position to 289.
  if (currentHallStepBot != previousHallStepBot) {
    if (currentHallStepBot == 0) {
      stepPos = 460;
    }
    previousHallStepBot = currentHallStepBot;
  }
}

// =============================================== SIMULATE ERROR =============================================== //
// Function that converts joystick input into vertical and horizontal
void ErrorSim() {
  int sim_setpoint_horz = analogRead(A0);
  setpoint_horz = map(sim_setpoint_horz, 0, 1023, 0, 359);

  if ((current_time - last_time_step_error) > 50) {
    int sim_setpoint_verz = analogRead(A1);
    setpoint_vert = (map(sim_setpoint_verz, 0, 1023, 0, 900));
    last_time_step_error = millis();
  }
}

// =============================================== ENCODER PULSE CHECK =============================================== //
void EncoderPulseCheck() {
  // Read the current state of inputCLK
  encCurrentStateCLK = digitalRead(inputCLK);

  // If the previous and the current state of the inputCLK are different then a pulse has occured
  if (encCurrentStateCLK != encPreviousStateCLK)
  {
    // If the inputDT state is different than the inputCLK state then
    // the encoder is rotating counterclockwise
    if (digitalRead(inputDT) != encCurrentStateCLK)
    {
      encCounter --;
      if (encCounter < 0)
      {
        encCounter = 359;
      }
    }
    //else
    if (digitalRead(inputDT) == encCurrentStateCLK)
    {
      // Encoder is rotating clockwise
      encCounter ++;
      if (encCounter > 359)
      {
        encCounter = 0;
      }
    }
    // Update previousStateCLK with the current state, set pedestal position equal to encoder counter, and activate hall sensor tracking
    encPreviousStateCLK = encCurrentStateCLK;
    pedPos = encCounter;
    hallTracking = 1;
    Serial.println(encCounter);
  }

  if (encCurrentStateCLK == encPreviousStateCLK)
  {
    //----------------------------------------------------------------------------
    // Update previousStateCLK with the current state
    encPreviousStateCLK = encCurrentStateCLK;
  }
  encCurrentCounter = encCounter;

  //  if (encCurrentCounter != encPreviousCounter)
  //  {
  //    Serial.print("Encoder counter: ");
  //    Serial.println(encCounter);
  //  }
  encPreviousCounter = encCurrentCounter;
  //      Serial.print("Encoder: ");
  //      Serial.print(encCounter);
  //      Serial.print("  ;  ");
}

// =============================================== MAPFLOAT =============================================== //
// Map function that outputs a float
float mapfloat(long x, long in_min, long in_max, long out_min, long out_max) {
  return (float)(x - in_min) * (out_max - out_min) / (float)(in_max - in_min) + out_min;
}

// =============================================== GET ERROR =============================================== //
// Initiates SPI transaction and processes received data to get the error
void GetError() {
  SPI.beginTransaction(SPISettings(16000000, MSBFIRST, SPI_MODE0));
  for (int i = 0; i <= 5; i++) {
    ErrorArr[i] = SPI.transfer(0);
  }
  SPI.endTransaction();

  int DFT1 = atan2(ErrorArr[0], ErrorArr[1]);
  int DFT2 = atan2(ErrorArr[2], ErrorArr[3]);
  int DFT3 = atan2(ErrorArr[4], ErrorArr[5]);
}

// =============================================== SEARCH =============================================== //
// Function to spin around and put antennas at 45 degree in order to search for a signal
void Search() {

}
