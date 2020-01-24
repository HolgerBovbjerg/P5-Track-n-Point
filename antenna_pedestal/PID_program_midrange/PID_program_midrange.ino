/***********************************************************************************
   The following program is designed for a 5th semester project at AAU.

   The program features two PID controllers for horizontal adjustments:
   Controller 1 which directly controls a DC motor based on an error in the input,
   Controller 2 gets its input from Controller 1 and controls the second motor
   based on the output from the Controller 1. This is an example of mid-range control.
   The vertical adjustments are managed by a stepper motor. No sophisticated control
   system is implemented here.

   Made by Thomas Haugaard Nov/Dec 2019
 **********************************************************************************/
// DECLARING FUNCTIONS
void Initialise();
void StepperControl();
void PID_Control1();
void PID_Control2();
void EncoderPulseCheck();
void HallSmallCounterFunc();
void HallStepper();
void ErrorSim();
void mapfloat();

void GetError();
void Search();


// CONTROLLER VARIABLES
double control_signal1, control_signal2;
double setpoint_horz = 0; // Horizontal angular displacement that we want to achieve
double Kp1 = 50;          // C1: proportional gain
double Ki1 = 0;        // C1: integral gain
double Kd1 = 10;          // C1: derivative gain
double Kp2 = 0.8;         // C2: proportional gain
double Kd2 = 0;          // C2: derivative gain
int T_cont = 25;          // Sample time for controllers in milliseconds (ms)
unsigned long last_time1 = millis();    // Used to calculate sampling time criteria for controller 1
unsigned long last_time2 = millis();    // Used to calculate sampling time criteria for controller 2
unsigned long current_time;             // Returns the number of milliseconds passed since the Arduino started running the program
double total_error = 0; // For calculating integral in C1
double last_error1 = 0; // For calculating derivative in C1
double last_error2 = 0; // For calculating derivative in C2
int max_control1 = 255;  // The maximum value that can be output by controllers
int min_control1 = 120;    // The minimum value that can be output by controllers
int max_control2 = 150;  // The maximum value that can be output by controllers
int min_control2 = 0;    // The minimum value that can be output by controllers
double error1 = 0;
double error2 = 0;
long sim_setpoint;      // Test variable

// STEPPER VARIABLES
double setpoint_vert = 0;     // Vertical angular displacement that we want to achieve
float step_GR = 1 / 9;          // Gear ratio for the stepper motor
int T_step = 1;               // Sample  time for stepper motor in milliseconds(ms)
unsigned long last_timestep = millis();
const int stepsPerRev = 400;  // Steps per revolution (in this case half steps are used)
int stepPos = 0;              // How many steps the motor has taken away from reference point (0 is completely level)
double stepInterval = 1;
int maxStep = 900;

// HALL SENSOR STEPPER UPPER
int HallStepUpCounter = 0;
int currentHallStepUpCounter;
int previousHallStepUpCounter;
int currentHallStepUpStateCLK;
int previousHallStepUpStateCLK;

// HALL SENSOR STEPPER LOWER
int HallStepBotCounter = 0;
int currentStepBotLargeCounter;
int previousStepBotLargeCounter;
int currentStepBotLargeStateCLK;
int previousStepBotLargeStateCLK;

// HALL SENSOR MOTOR LARGE
int HallLargeCounter = 0;
int currentHallLargeCounter;
int previousHallLargeCounter;
int currentHallLargeStateCLK;
int previousHallLargeStateCLK;
double MLargeInt = 7.40741;

// HALL SENSOR MOTOR SMALL
int HallSmallCounter = 0;
int currentHallSmallCounter;
int previousHallSmallCounter;
int currentHallSmallStateCLK;
int previousHallSmallStateCLK;
double MSmallInt = 0.13889;

// PEDESTAL VARIABLES
//bool pulseReading = 0;    // Truth check for checking if the stand has turned one encoder interval
bool standIsZero = 0;     // Truth check for checking if the stand is reset during initialisation
double angInt = 1;          // Angular interval in the stand
double pedPos = 0;          // Pedestal position. Starts at 0 after initialisation, then increments/decrements by angInt when receiving encoder pulse
int standDir = 0;           // Current stand direction tracker. 1 for clockwise, 0 for counterclockwise.
int prevStandDir;           // Used to compare between current and previous stand direction to check if motor hall counter should be registered.
int encCounter = 0;         // Stores pedestal encoder count
int encCurrentCounter;      // Current counter at time of updating. Used to track if counter has been updated.
int encPreviousCounter;     // Previous counter at time of updating. Used to track if counter has been updated.
int encCurrentStateCLK;     // Current state of the encoder input. Used to track pulses.
int encPreviousStateCLK;    // Previous state of the encoder input. Used to track pulses.
int hallTracking;           // Checks whether or not to track hall sensors.
int zeroPosHorz = 0;        // Set high if init function has returned stand to horizontal default.
int zeroPosVert = 0;        // Set high if init function has returned stand to vertical default.

// PIN ASSIGNMENT
int HallLarge = 2;          // Hall sensor in the large motor
int HallSmall = 3;          // Hall sensor in the small motor
int HallStepUp = 4;         // Bottom hall sensor for the stepper - WHITE
int HallStepBot = 5;        // Top hall sensor for the stepper - BLUE
int HallStand = 6;          // Hall sensor for the pedestal

int inputCLK = 7;           // Pin for reading pulse A on the stand encoder -- BLUE
int inputDT = 8;            // Pin for reading pulse B on the stand encoder -- GRØN

int C1outputPin = 11;       // The PWM pin used by controller 1
int C2outputPin = 12;       // The PWM pim used by controller 2

int SS_PIN = 22;            // SPI Slave Select
int MOSI_PIN = 23;          // SPI Master-Out Slave-In
int MISO_PIN = 24;          // SPI Master-In Slave-Out
int SCK_PIN = 25;           // SPI clock

int MotorForSmall = 26;     // Forward direction for small motor
int MotorBackSmall = 27;    // Backward direction for small motor
int MotorForLarge = 28;     // Forward direction for large motor
int MotorBackLarge = 29;    // Backward direction for large motor

int StepMode = 30;           // HIGH for half step, LOW for full step
int StepClock = 31;         // Stepper motor clock
int StepDir = 32;           // Stepper direction

unsigned long current_test_time = millis();
unsigned long last_test_time = millis();

// =============================================== SETUP =============================================== //

void setup() {
  Serial.begin(250000);
  // Change PWM frequency to 3.9266 kHz
//  int myEraser = 7;
//  TCCR2B &= ~myEraser;
//  int myPrescaler = 1;
//  TCCR2B |= myPrescaler;
  
  // Controller output (limited to 0-255)
  pinMode(C1outputPin, OUTPUT);
  pinMode(C2outputPin, OUTPUT);

  // Motor direction changing
  pinMode(MotorForSmall, OUTPUT);
  pinMode(MotorBackSmall, OUTPUT);
  pinMode(MotorForLarge, OUTPUT);
  pinMode(MotorBackLarge, OUTPUT);

  // Inputs for the pulses from the stand encoder as well as reference check for init
  pinMode(HallStand, INPUT);
  pinMode(HallStepBot, INPUT);
  pinMode(HallStepUp, INPUT);

  // Stepper motor pins
  pinMode(StepMode, OUTPUT);
  pinMode(StepClock, OUTPUT);
  pinMode(StepDir, OUTPUT);

  // SPI pins
  pinMode(SCK_PIN, INPUT);
  pinMode(MOSI_PIN, INPUT);
  pinMode(MISO_PIN, OUTPUT);  // (only if bidirectional mode needed)
  pinMode(SS_PIN, INPUT);

  // Toggle stepper parameters
  digitalWrite(StepMode, HIGH);   // Toggle halfstep on
  digitalWrite(StepDir, HIGH);    // Toggle direction

  // Toggle motors - set to inactive
  digitalWrite(MotorForSmall, LOW);
  digitalWrite(MotorBackSmall, LOW);
  digitalWrite(MotorForLarge, LOW);
  digitalWrite(MotorBackLarge, LOW);

  analogWrite(C1outputPin,0);
  analogWrite(C2outputPin,0);

  //Serial.println("TEST1");
}

// =============================================== LOOP =============================================== //

void loop() {
  delay(500);
  current_time = millis();  // Saves the current time for the purpose of establishing sample rate
  current_test_time = millis();
  //if (standIsZero == 0)Initialise();
  ErrorSim();
  EncoderPulseCheck();
  //HallSmallCounterFunc();
  //HallStepper();
  //StepperControl();
  PID_Control1();
  PID_Control2();
}
