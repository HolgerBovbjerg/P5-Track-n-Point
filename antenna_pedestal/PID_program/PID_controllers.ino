// =============================================== STEPPER MOTOR =============================================== //
// Stepper controller using setpoint by potentiometer
void StepperControl() {

  if (digitalRead(StepClock) == LOW) {
    if (setpoint_vert < stepPos) digitalWrite(StepDir, LOW);
    else if (setpoint_vert >= stepPos) digitalWrite(StepDir, HIGH);
  }


  if ((current_time - last_timestep) >= T_step) {
    if (((setpoint_vert - stepPos) >= 1) && (stepPos <= 900)) {
      digitalWrite(StepClock, !digitalRead(StepClock));
      if (digitalRead(StepClock) == LOW) {
        stepPos ++;
      }
    }
    else if (((stepPos - setpoint_vert) >= 1) && (stepPos >= 0)) {
      digitalWrite(StepClock, !digitalRead(StepClock));
      if (digitalRead(StepClock) == LOW) {
        stepPos --;
      }
    }
    last_timestep = millis();
  }

  //  if ((current_time - last_timestep) >= T_step) {
  //    if (setpoint_vert > stepPos) digitalWrite(StepDir, HIGH);
  //    else digitalWrite(StepDir, LOW);
  //
  //    if (digitalRead(StepDir) == HIGH && (abs(setpoint_vert - stepPos) >= stepInterval) && stepPos < maxStep) {
  //      digitalWrite(StepClock, !digitalRead(StepClock));
  //      if (digitalRead(StepClock) == LOW) stepPos ++;
  //    }
  //    else if (digitalRead(StepDir) == LOW && (abs(setpoint_vert - stepPos) >= stepInterval) && stepPos > 0) {
  //      digitalWrite(StepClock, !digitalRead(StepClock));
  //      if (digitalRead(StepClock) == LOW) stepPos --;
  //    }
  //    last_timestep = millis();
  //  }

  //  if ((current_test_time - last_test_time) > 250) {
  //    if (digitalRead(StepDir) == HIGH) Serial.print("Dir: HIGH  ;  ");
  //    else Serial.print("Dir: LOW  ;  ");
  //    Serial.print("Setpoint: ");
  //    Serial.print(setpoint_vert);
  //    Serial.print("  ;  ");
  //    Serial.print("stepPos: ");
  //    Serial.print(stepPos);
  //    Serial.print("  ;  ");
  //    Serial.print("Max Pos: ");
  //    Serial.print(maxStep);
  //    Serial.print("  ;  ");
  //    Serial.println("Min Pos: 0");
  //    last_test_time = millis();
  //  }
}

// =============================================== STEPPER MOTOR JOYSTICK =============================================== //
// Stepper controller using joystick
void StepperControlJoystick() {

  if (digitalRead(StepClock) == LOW) {
    if (setpoint_vert < 0) digitalWrite(StepDir, LOW);
    else if (setpoint_vert >= 0) digitalWrite(StepDir, HIGH);
  }


  if ((current_time - last_timestep) >= T_step) {
    if ((setpoint_vert >= 1) && (stepPos < 900)) {
      digitalWrite(StepClock, !digitalRead(StepClock));
      if (digitalRead(StepClock) == LOW) {
        stepPos ++;
      }
    }
    else if ((setpoint_vert <= -1) && (stepPos > 0)) {
      digitalWrite(StepClock, !digitalRead(StepClock));
      if (digitalRead(StepClock) == LOW) {
        stepPos --;
      }
    }
    last_timestep = millis();
  }

  //  if ((current_test_time - last_test_time) > 250) {
  //    if (digitalRead(StepDir) == HIGH) Serial.print("Dir: HIGH  ;  ");
  //    else Serial.print("Dir: LOW  ;  ");
  //    Serial.print("Setpoint: ");
  //    Serial.print(setpoint_vert);
  //    Serial.print("  ;  ");
  //    Serial.print("stepPos: ");
  //    Serial.print(stepPos);
  //    Serial.print("  ;  ");
  //    Serial.print("Max Pos: ");
  //    Serial.print(maxStep);
  //    Serial.print("  ;  ");
  //    Serial.println("Min Pos: 0");
  //    last_test_time = millis();
  //  }
}

// =============================================== CONTROLLER 1 =============================================== //
// Controller for the small motor
void PID_Control1() {

  int delta_time = current_time - last_time1; //delta time interval
  int raw_diff;
  double delta_error;

  if (delta_time >= T_cont) {
//    if (setpoint_horz > pedPos) {
//      error1 = setpoint_horz - pedPos;
//      standDir = 1;
//    }
//    else {
//      error1 = pedPos - setpoint_horz;
//      standDir = 0;
//    }
//
//    if (error1 > 180) {
//      standDir = ! standDir;
//      error1 = 360 - error1;
//    }
//
//    if (prevStandDir != standDir) {
//      hallTracking = 0;
//      //delay(200);
//    }

  if (setpoint_horz > 0) standDir = 1;   // Turn CW
  else if (setpoint_horz < 0) standDir = 0; // Turn CCW

  error1 = setpoint_horz;
  
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

      //      if (error1 <= 30) {  // If error is less than 30, switch off large motor
      //        digitalWrite(MotorForLarge, LOW);
      //        digitalWrite(MotorBackLarge, LOW);
      //      }

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

  //  if (standDir == 1) {
  //    Serial.print("Dir: CW");
  //    Serial.print("  ;  ");
  //  }
  //  else {
  //    Serial.print("Dir: CCW");
  //    Serial.print("  ;  ");
  //  }
  //  if (hallTracking == 1) {
  //    Serial.print("Track: 1");
  //    Serial.print("  ;  ");
  //  }
  //  else {
  //    Serial.print("Track: 0");
  //    Serial.print("  ;  ");
  //  }

  //  Serial.print("C1 error: ");
  //  Serial.print(error1);
  //  Serial.print("  ;  ");
  //      Serial.print("C1 pro: ");
  //      Serial.print(Kp1*error1);
  //      Serial.print("  ;  ");
  //      Serial.print("C1 tot: ");
  //      Serial.print((Ki1 * T_cont) * abs(total_error));
  //      Serial.print("  ;  ");
  //      Serial.print("C1 dif: ");
  //      Serial.print((Kd1 / T_cont) * delta_error);
  //      Serial.print("  ;  ");
  //  Serial.print("Signal 1: ");
  //  Serial.print(control_signal1);
  //  Serial.print("  ;  ");
}

// =============================================== CONTROLLER 2 =============================================== //
// Controller for the large motor
void PID_Control2() {

  int delta_time = current_time - last_time2; //delta time interval

  if (delta_time >= T_cont) {

    error2 = error1 - 5;
    if (error2 < 0) error2 = 0;

    double delta_error = error2 - last_error2; //difference of error for derivative term

    control_signal2 = Kp2 * error2 + (Kd2 / T_cont) * delta_error; // Compute controller 2
    if (control_signal2 >= max_control2) control_signal2 = max_control2;
    else if (control_signal2 <= min_control2) control_signal2 = 0;

    last_error2 = error2;

    //if (error1 <= 30) analogWrite(C2outputPin, 0);
    analogWrite(C2outputPin, control_signal2);

    last_time2 = millis();
  }

  //  Serial.print("C2 error: ");
  //  Serial.print(error2);
  //  Serial.print("  ;  ");
  //  Serial.print("Signal 2: ");
  //  Serial.println(control_signal2);
}
