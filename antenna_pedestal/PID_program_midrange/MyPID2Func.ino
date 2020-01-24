// =============================================== INITIALISE =============================================== //
// Return stand to default position

void Initialise() {
  unsigned long lastTime = millis();
  unsigned long currentTime = millis();

  while (digitalRead(HallStand) == HIGH && zeroPosHorz == 0) {
    analogWrite(C1outputPin, 0);
    analogWrite(C2outputPin, 150);
    digitalWrite(MotorForSmall, LOW);
    digitalWrite(MotorBackSmall, HIGH);
    digitalWrite(MotorForLarge, LOW);
    digitalWrite(MotorBackLarge, HIGH);
    Serial.println("Horizontal align");
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

  if (zeroPosHorz == 0) {
    Serial.println("Horizontal zero position found");
    zeroPosHorz = 1;
    encCounter = 0;
    analogWrite(C1outputPin, 0);
    analogWrite(C2outputPin, 0);
    digitalWrite(MotorForSmall, LOW);
    digitalWrite(MotorBackSmall, LOW);
    digitalWrite(MotorForLarge, LOW);
    digitalWrite(MotorBackLarge, LOW);
  }

  lastTime = millis();
  currentTime = millis();

  while (digitalRead(HallStepBot) == HIGH && zeroPosVert == 0) {
    if ((currentTime - lastTime) >= T_step) {
      digitalWrite(StepClock, !digitalRead(StepClock));
      lastTime = millis();
    }
    else currentTime = millis();
    Serial.println("Vertical align");
  }

  if (zeroPosVert == 0) {
    Serial.println("Vertical zero position found");
    zeroPosVert = 1;
    stepPos = 0;
    standIsZero = 1;
  }

  delay(2000);

  /*int zeroPos = 0;
    int alignPrevVert = 0;      // Check if the pedestal was aligned previosuly to see if the pedestal has overshot the target.
    int alignPrevHorz = 0;      // Check if the pedestal was aligned previosuly to see if the pedestal has overshot the target.
    //int alignedVert = 0;      // Check if the pedestal is currently aligned vertically
    //int alignedHorz = 0;      // Check if the pedestal is currently aligned horizontally
    int alignHorzSucces = 0;    // Set high if the pedestal is evaluated to be horizontally aligned
    int alignVertSucces = 0;    // set high if the pedestal is evaluated to be vertically aligned
    //int alignSucces = 0;      // Set high is the pedestal is evaluated to be fully aligned
    int alignCount = 0;         // Counter for how long the pedestal has been aligned (necessary to prevent overshoot as there could be brief alignment)
    int passed = 0;             // Set high if horizontal alignment overshoots with the large motor so the small motor makes minute adjustments instead
    digitalWrite(MotorForSmall, HIGH);
    digitalWrite(MotorBackSmall, LOW);
    digitalWrite(MotorForLarge, HIGH);
    digitalWrite(MotorBackLarge, LOW);
    analogWrite(C2outputPin, 100);
    analogWrite(C1outputPin, 100);

    while (alignHorzSucces != 1) {

    while (passed == 0) {     // For moving towards default
      if (alignPrevHorz == 0 && digitalRead(HallStand) == 0) analogWrite(C2outputPin, 255);  // If the default position has not yet been reached
      else if (alignPrevHorz == 0 && digitalRead(HallStand) == 1) {  // If the pedestal is currently in the default position
        alignPrevHorz = 1;
        analogWrite(C2outputPin, 0);
        while (alignHorzSucces != 1 && digitalRead(HallStand) == 1) {
          alignCount++;
          if (alignCount >= 10000) alignHorzSucces = 1;
        }
      }
      else if (alignPrevHorz == 1 && digitalRead(HallStand) == 0) {  // If the large motor has overshot the target
        digitalWrite(MotorForSmall, LOW);
        digitalWrite(MotorBackSmall, HIGH);
        digitalWrite(MotorForLarge, HIGH);
        digitalWrite(MotorBackLarge, LOW);
        analogWrite(C2outputPin, 0);
        passed = 1;
        alignPrevHorz = 0;
      }
    }
    while (passed == 1) {
      if (alignPrevHorz == 0 && digitalRead(HallStand) == 0) analogWrite(C1outputPin, 20);
      else if (alignPrevHorz == 0 && digitalRead(HallStand) == 1) {
        alignPrevHorz = 1;
        analogWrite(C1outputPin, 0);
        while (alignHorzSucces != 1 && digitalRead(HallStand) == 1) {
          delay(100);
          alignCount++;
          if (alignCount >= 50) {
            alignHorzSucces = 1;
            passed = 0;
          }
        }
      }
      else if (alignPrevHorz == 1 && digitalRead(HallStand) == 0) {
        digitalWrite(MotorForSmall, !digitalRead(MotorForSmall));
        digitalWrite(MotorBackSmall, !digitalRead(MotorBackSmall));
        digitalWrite(MotorForLarge, !digitalRead(MotorForLarge));
        digitalWrite(MotorBackLarge, !digitalRead(MotorBackLarge));
        analogWrite(C1outputPin, 0);
        alignPrevHorz = 0;
      }
    }
    }
    while (alignVertSucces != 1) { // For adjusting vertical alignment
    if (digitalRead(HallStepBot) != 0) {
      digitalWrite(StepClock, !digitalRead(StepClock));
      delay(1);
    }
    else if (digitalRead(HallStepBot) == 1) alignVertSucces = 1;
    }*/
}

// =============================================== STEPPER MOTOR =============================================== //
// Controls the stepper motor
void StepperControl() {
  if ((current_time - last_timestep) >= T_step) {
    if (setpoint_vert > stepPos) digitalWrite(StepDir, HIGH);
    else digitalWrite(StepDir, LOW);

    if (digitalRead(StepDir) == HIGH && (abs(setpoint_vert - stepPos) >= stepInterval) && stepPos < maxStep) {
      digitalWrite(StepClock, !digitalRead(StepClock));
      if (digitalRead(StepClock) == LOW) stepPos ++;
    }
    else if (digitalRead(StepDir) == LOW && (abs(setpoint_vert - stepPos) >= stepInterval) && stepPos > 0) {
      digitalWrite(StepClock, !digitalRead(StepClock));
      if (digitalRead(StepClock) == LOW) stepPos --;
    }
    last_timestep = millis();
  }

  if ((current_test_time - last_test_time) > 250) {
    if (digitalRead(StepDir) == HIGH) Serial.print("Dir: HIGH  ;  ");
    else Serial.print("Dir: LOW  ;  ");
    Serial.print("Setpoint: ");
    Serial.print(setpoint_vert);
    Serial.print("  ;  ");
    Serial.print("stepPos: ");
    Serial.print(stepPos);
    Serial.print("  ;  ");
    Serial.print("Max Pos: ");
    Serial.print(maxStep);
    Serial.print("  ;  ");
    Serial.println("Min Pos: 0");
    last_test_time = millis();
  }
}


// =============================================== CONTROLLER 1 =============================================== //
void PID_Control1() {

  int delta_time = current_time - last_time1; //delta time interval
  int raw_diff;
  double delta_error;

  if (delta_time >= T_cont) {
    if (setpoint_horz > pedPos) {
      error1 = setpoint_horz - pedPos;
      standDir = 1;
    }
    else {
      error1 = pedPos - setpoint_horz;
      standDir = 0;
    }

    if (error1 > 180) {
      standDir = ! standDir;
      error1 = 360 - error1;
    }

    if (prevStandDir != standDir) {
      hallTracking = 0;
      //delay(200);
    }
    if (error1 >= MSmallInt) {
      if (standDir == 1) { // if the shortest path is clockwise, set motors to turn clockwise
        digitalWrite(MotorForSmall, LOW);
        digitalWrite(MotorBackSmall, HIGH);
        digitalWrite(MotorForLarge, LOW);
        digitalWrite(MotorBackLarge, HIGH);
      }

      else {
        digitalWrite(MotorForSmall, HIGH);
        digitalWrite(MotorBackSmall, LOW);
        digitalWrite(MotorForLarge, HIGH);
        digitalWrite(MotorBackLarge, LOW);
      }

      if (error1 <= 30) {  // If error is less than 30, switch off large motor
        digitalWrite(MotorForLarge, LOW);
        digitalWrite(MotorBackLarge, LOW);
      }

      // If there's been a change in direction, don't track increments in the motor hall sensor (compensates for lag in the chain connecting the gears)

      prevStandDir = standDir;

      total_error += (setpoint_horz - pedPos); //accumalates the error - integral term
      if (total_error >= 50) total_error = 50;  // Since the highest value we can ouput is 255, total_error is limited to 255
      else if (total_error <= -50) total_error = -50;  // This is here to designate a minimum value. Just 0 for now.

      delta_error = error1 - last_error1; //difference of error for derivative term

      control_signal1 = Kp1 * error1 + (Ki1 * T_cont) * abs(total_error) + (Kd1 / T_cont) * delta_error; // Compute controller 1
      if (control_signal1 >= max_control1) control_signal1 = max_control1;
      else if (control_signal1 <= min_control1) control_signal1 = 0;

      last_error1 = error1;

      analogWrite(C1outputPin, control_signal1);
    }
    else {
      control_signal1 = 0;
      analogWrite(C1outputPin, control_signal1);
    }

    last_time1 = millis();
  }

  if (standDir == 1) {
    Serial.print("Dir: CW");
    Serial.print("  ;  ");
  }
  else {
    Serial.print("Dir: CCW");
    Serial.print("  ;  ");
  }
  //  if (hallTracking == 1) {
  //    Serial.print("Track: 1");
  //    Serial.print("  ;  ");
  //  }
  //  else {
  //    Serial.print("Track: 0");
  //    Serial.print("  ;  ");
  //  }
  
  Serial.print("C1 error: ");
  Serial.print(error1);
  Serial.print("  ;  ");
  //      Serial.print("C1 pro: ");
  //      Serial.print(Kp1*error1);
  //      Serial.print("  ;  ");
  //      Serial.print("C1 tot: ");
  //      Serial.print((Ki1 * T_cont) * abs(total_error));
  //      Serial.print("  ;  ");
  //      Serial.print("C1 dif: ");
  //      Serial.print((Kd1 / T_cont) * delta_error);
  //      Serial.print("  ;  ");
  Serial.print("Signal 1: ");
  Serial.print(control_signal1);
  Serial.print("  ;  ");
}

// =============================================== CONTROLLER 2 =============================================== //

void PID_Control2() {

  int delta_time = current_time - last_time2; //delta time interval

  if (delta_time >= T_cont) {

    error2 = control_signal1;

    double delta_error = error2 - last_error2; //difference of error for derivative term

    control_signal2 = Kp2 * error2 + (Kd2 / T_cont) * delta_error; // Compute controller 2
    if (control_signal2 >= max_control2) control_signal2 = max_control2;
    else if (control_signal2 <= min_control2) control_signal2 = min_control2;

    last_error2 = error2;

    if (error1 <= 30) analogWrite(C2outputPin, 0);
    else analogWrite(C2outputPin, control_signal2);

    last_time2 = millis();
  }

  Serial.print("C2 error: ");
  Serial.print(error2);
  Serial.print("  ;  ");
  Serial.print("Signal 2: ");
  Serial.println(control_signal2);
}

// =============================================== ENCODER PULSE CHECK =============================================== //
// Check for encoder pulse.

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
  }
  if (encCurrentStateCLK == encPreviousStateCLK)
  {
    //----------------------------------------------------------------------------
    // Update previousStateCLK with the current state
    encPreviousStateCLK = encCurrentStateCLK;
  }
  encCurrentCounter = encCounter;
  if (encCurrentCounter != encPreviousCounter)
  {
    //Serial.print("Encoder counter: ");
    //Serial.println(encCounter);
  }
  encPreviousCounter = encCurrentCounter;
  //    Serial.print("Encoder: ");
  //    Serial.print(encCounter);
  //    Serial.print("  ;  ");
}

// =============================================== HALL COUNTER SMALL =============================================== //

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

  Serial.print("Ped. pos: ");
  Serial.print(pedPos);
  Serial.print("  ;  ");
}

// =============================================== HALL TRACKER STEPPER =============================================== //
void HallStepper() {
  // Read the current state of inputCLK
  currentHallStepUpStateCLK = digitalRead(inputCLK);

  // If the previous and the current state of the inputCLK are different then a pulse has occured
  if (currentHallStepUpStateCLK != encPreviousStateCLK)
  {
    // If the inputDT state is different than the inputCLK state then
    // the encoder is rotating counterclockwise
    if (digitalRead(inputDT) != currentHallStepUpStateCLK)
    {
      encCounter --;
      if (encCounter < 0)
      {
        encCounter = 359;
      }
    }
    //else
    if (digitalRead(inputDT) == currentHallStepUpStateCLK)
    {
      // Encoder is rotating clockwise
      encCounter ++;
      if (encCounter > 359)
      {
        encCounter = 0;
      }
    }
    // Update previousStateCLK with the current state, set pedestal position equal to encoder counter, and activate hall sensor tracking
    encPreviousStateCLK = currentHallStepUpStateCLK;
    pedPos = encCounter;
    hallTracking = 1;
  }
  if (currentHallStepUpStateCLK == encPreviousStateCLK)
  {
    //----------------------------------------------------------------------------
    // Update previousStateCLK with the current state
    encPreviousStateCLK = currentHallStepUpStateCLK;
  }
  encCurrentCounter = encCounter;
  if (encCurrentCounter != encPreviousCounter)
  {
    //Serial.print("Encoder counter: ");
    //Serial.println(encCounter);
  }
  encPreviousCounter = encCurrentCounter;
}

// =============================================== SIM ERROR =============================================== //

void ErrorSim() {
  sim_setpoint = analogRead(A0);
  //setpoint_vert = mapfloat(sim_setpoint, 0, 1023, 0, 900);

  setpoint_horz = mapfloat(sim_setpoint, 0, 1023, 0, 359);

  Serial.print("Setpoint: ");
  Serial.print(setpoint_horz);
  Serial.print("  ;  ");

}

// =============================================== MAPFLOAT =============================================== //

float mapfloat(long x, long in_min, long in_max, long out_min, long out_max)
{
  return (float)(x - in_min) * (out_max - out_min) / (float)(in_max - in_min) + out_min;
}

// =============================================== GET ERROR =============================================== //
// Updates error variable and checks if stand should turn clockwise or counterclockwise


// =============================================== SEARCH =============================================== //

void Search() {
  // Function to spin around and alternating between raising and lowering the antennas for showing off
}



//if (error1 > 180) { // if error is greater than 180 degrees clockwise, get counterclockwise error and go that way instead.
//      error1 = 360 - error1 + setpoint_horz;
//      digitalWrite(MotorForSmall, LOW);
//      digitalWrite(MotorBackSmall, HIGH);
//      digitalWrite(MotorForLarge, LOW);
//      digitalWrite(MotorBackLarge, HIGH);
//      standDir = 0;  // Set direction to counterclockwise
//    }
//    else if (error1 > 0 && error1 <= 180) { // if error is between 0 and 180 degrees, go clockwise
//      error1 = 360 - pedPos + setpoint_horz;
//      digitalWrite(MotorForSmall, HIGH);
//      digitalWrite(MotorBackSmall, LOW);
//      digitalWrite(MotorForLarge, HIGH);
//      digitalWrite(MotorBackLarge, LOW);
//      standDir = 1;   // Set direction to clockwise
//    }
//    else if (error1 < 0 && error1 >= -180) { // if error is between 0 and -180 degrees, go counterclockwise
//      error1 = 360 - pedPos + setpoint_horz;
//      digitalWrite(MotorForSmall, LOW);
//      digitalWrite(MotorBackSmall, HIGH);
//      digitalWrite(MotorForLarge, LOW);
//      digitalWrite(MotorBackLarge, HIGH);
//      standDir = 0;  // Set direction to counterclockwise
//    }
//    else if (error1 < -180) { // if error is greater than -180 degrees, go clockwise
//      error1 = 360 - pedPos + setpoint_horz;
//      digitalWrite(MotorForSmall, HIGH);
//      digitalWrite(MotorBackSmall, LOW);
//      digitalWrite(MotorForLarge, HIGH);
//      digitalWrite(MotorBackLarge, LOW);
//      standDir = 1;  // Set direction to clockwise
//    }
