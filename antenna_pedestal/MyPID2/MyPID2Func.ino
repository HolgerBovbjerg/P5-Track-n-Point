// ============================ INITIALISE ============================ //
// Return stand to default position

void Initialise() {
  int alignPrevVert = 0;  // Check if the pedestal was aligned previosuly to see if the pedestal has overshot the target.
  int alignPrevHorz = 0;  // Check if the pedestal was aligned previosuly to see if the pedestal has overshot the target.
  //int alignedVert = 0;      // Check if the pedestal is currently aligned vertically
  //int alignedHorz = 0;      // Check if the pedestal is currently aligned horizontally
  int alignHorzSucces = 0;  // Set high if the pedestal is evaluated to be horizontally aligned
  int alignVertSucces = 0;  // set high if the pedestal is evaluated to be vertically aligned
  //int alignSucces = 0;      // Set high is the pedestal is evaluated to be fully aligned
  int alignCount = 0;       // Counter for how long the pedestal has been aligned (necessary to prevent overshoot as there could be brief alignment)
  int passed = 0;           // Set high if horizontal alignment overshoots with the large motor so the small motor makes minute adjustments instead
  digitalWrite(MotorForSmall, HIGH);
  digitalWrite(MotorBackSmall, LOW);
  digitalWrite(MotorForLarge, LOW);
  digitalWrite(MotorBackLarge, HIGH);
  analogWrite(C2outputPin, 0);
  analogWrite(C1outputPin, 0);

  while (alignHorzSucces != 1) {
    while (passed == 0) {     // For moving towards default
      if (alignPrevHorz == 0 && digitalRead(horzDefault) == 0) analogWrite(C2outputPin, 255);  // If the default position has not yet been reached
      else if (alignPrevHorz == 0 && digitalRead(horzDefault) == 1) {  // If the pedestal is currently in the default position
        alignPrevHorz = 1;
        analogWrite(C2outputPin, 0);
        while (alignHorzSucces != 1 && digitalRead(horzDefault) == 1) {
          alignCount++;
          if (alignCount >= 10000) alignHorzSucces = 1;
        }
      }
      else if (alignPrevHorz == 1 && digitalRead(horzDefault) == 0) {  // If the large motor has overshot the target
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
      if (alignPrevHorz == 0 && digitalRead(horzDefault) == 0) analogWrite(C1outputPin, 20);
      else if (alignPrevHorz == 0 && digitalRead(horzDefault) == 1) {
        alignPrevHorz = 1;
        analogWrite(C1outputPin, 0);
        while (alignHorzSucces != 1 && digitalRead(horzDefault) == 1) {
          delay(100);
          alignCount++;
          if (alignCount >= 50) {
            alignHorzSucces = 1;
            passed = 0;
          }
        }
      }
      else if (alignPrevHorz == 1 && digitalRead(horzDefault) == 0) {
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
    if (digitalRead(vertDefault) != 0) {
      myStepper.step(1);
      delay(20);
    }
    else if (digitalRead(vertDefault) == 1) alignVertSucces = 1;
  }
}
// ============================ ENCODER PULSE CHECK ============================ //
// Check for encoder pulse.

void EncoderPulseCheck() {
  // Read the current state of inputCLK
  currentStateCLK = digitalRead(inputCLK);

  // If the previous and the current state of the inputCLK are different then a pulse has occured
  if (currentStateCLK != previousStateCLK)
  {
    // If the inputDT state is different than the inputCLK state then
    // the encoder is rotating counterclockwise
    if (digitalRead(inputDT) != currentStateCLK)
    {
      counter --;
      if (counter < 0)
      {
        counter = 359;
      }
    }
    //else
    if (digitalRead(inputDT) == currentStateCLK)
    {
      // Encoder is rotating clockwise
      counter ++;
      if (counter > 359)
      {
        counter = 0;
      }
    }
    // Update previousStateCLK with the current state
    previousStateCLK = currentStateCLK;
  }
  if (currentStateCLK == previousStateCLK)
  {
    //----------------------------------------------------------------------------
    // Update previousStateCLK with the current state
    previousStateCLK = currentStateCLK;
  }
  currentCounter = counter;
  if (currentCounter != previousCounter)
  {
    //Serial.print("Encoder counter: ");
    Serial.println(counter);
  }
  previousCounter = currentCounter;
}

// ============================ STEPPER MOTOR ============================ //
// Controls the stepper motor
void StepperControl() {
//  int currentTime = millis();
//  if (currentTime - lastTime >= 15) {
//    if (setpoint_vert > stepPos) myStepper.step(1);
//    else if (setpoint_vert < stepPos) myStepper.step(-1);
//    lastTime = currentTime;
//  }
}


// ============================ CONTROLLER 1 ============================ //
void PID_Control1() {

  int delta_time = current_time - last_time1; //delta time interval

  if (delta_time >= T_cont) {

    double error = setpoint_horz - pedPos;

    if (error > 1800) { // if error is greater than 180 degrees clockwise, get counterclockwise error and go that way instead.
      error = 3600 - error + setpoint_horz;
      digitalWrite(MotorForSmall, HIGH);
      digitalWrite(MotorBackSmall, LOW);
      digitalWrite(MotorForLarge, LOW);
      digitalWrite(MotorBackLarge, HIGH);
      standDir = 0;  // Set direction to counterclockwise
    }
    else if (error > 0 && error <= 1800) { // if error is between 0 and 180 degrees, go clockwise
      error = 3600 - pedPos + setpoint_horz;
      digitalWrite(MotorForSmall, LOW);
      digitalWrite(MotorBackSmall, HIGH);
      digitalWrite(MotorForLarge, HIGH);
      digitalWrite(MotorBackLarge, LOW);
      standDir = 1   // Set direction to clockwise
    }
    else if (error < 0 && error >= -1800) { // if error is between 0 and -180 degrees, go counterclockwise
      error = 3600 - pedPos + setpoint_horz;
      digitalWrite(MotorForSmall, HIGH);
      digitalWrite(MotorBackSmall, LOW);
      digitalWrite(MotorForLarge, LOW);
      digitalWrite(MotorBackLarge, HIGH);
      standDir = 0;  // Set direction to counterclockwise
    }
    else if (error < -1800) { // if error is greater than -180 degrees, go clockwise
      error = 3600 - pedPos + setpoint_horz;
      digitalWrite(MotorForSmall, LOW);
      digitalWrite(MotorBackSmall, LOW);
      digitalWrite(MotorForLarge, HIGH);
      digitalWrite(MotorBackLarge, HIGH);
      standDir = 1;  // Set direction to clockwise
    }


    total_error += error; //accumalates the error - integral term
    if (total_error >= max_control) total_error = max_control;  // Since the highest value we can ouput is 255, total_error is limited to 255
    else if (total_error <= min_control) total_error = min_control;  // This is here to designate a minimum value. Just 0 for now.

    double delta_error = error - last_error1; //difference of error for derivative term

    control_signal1 = abs(Kp1 * error + (Ki1 * T_cont) * total_error + (Kd1 / T_cont) * delta_error); // Computer controller 1
    if (control_signal1 >= max_control) control_signal1 = max_control;
    else if (control_signal1 <= min_control) control_signal1 = min_control;

    last_error1 = error;

    analogWrite(C1outputPin, control_signal1);
  }
}

// ============================ CONTROLLER 2 ============================ //

void PID_Control2() {

  int delta_time = current_time - last_time2; //delta time interval

  if (delta_time >= T_cont) {

    double error = control_signal1;

    double delta_error = error - last_error2; //difference of error for derivative term

    control_signal1 = abs(Kp2 * error + (Kd2 / T_cont) * delta_error); // Compute controller 2
    if (control_signal1 >= max_control) control_signal1 = max_control;
    else if (control_signal1 <= min_control) control_signal1 = min_control;

    last_error2 = error;

    analogWrite(C2outputPin, control_signal2);
  }
}

// ============================ HORIZONTAL DIRECTION CHANGE ============================ //
// Updates error variable and checks if stand should turn clockwise or counterclockwise
void GetError() {
  /* Get horz reference
     map to 3600 number range
     find difference between current stand displacement and reference
     save to error
     if error is
  */

}

void Demonstration() {
  // Function to spin around and alternating between raising and lowering the antennas for showing off
}
