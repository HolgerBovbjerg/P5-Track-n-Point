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
#include <HalfStepper.h> // Half stepper library used to get half steps as opposed to full steps. Twice the resolution in movement at the cost of speed.

// DECLARING FUNCTIONS
void PID_Control1();
void PID_Control2();
void GetError();
void Demonstration();
void EncoderPulseCheck();
void StepperControl();
void Initialize();

// CONTROLLER VARIABLES
double control_signal1, control_signal2;
double setpoint_horz = 0; // Horizontal angular displacement that we want to achieve
double Kp1 = 2;           // C1: proportional gain
double Ki1 = 2;           // C1: integral gain
double Kd1 = 2;           // C1: derivative gain
double Kp2 = 2;           // C2: proportional gain
double Kd2 = 2;           // C2: derivative gain
int T_cont = 25;          // Sample time for controllers in milliseconds (ms)
unsigned long last_time1 = millis();    // Used to calculate sampling time criteria for controller 1
unsigned long last_time2 = millis();    // Used to calculate sampling time criteria for controller 2
unsigned long current_time;             // Returns the number of milliseconds passed since the Arduino started running the program
double total_error = 0; // For calculating integral in C1
double last_error1 = 0; // For calculating derivative in C1
double last_error2 = 0; // For calculating derivative in C2
int max_control = 255;  // The maximum value that can be output by controllers
int min_control = 0;    // The minimum value that can be output by controllers

// STEPPER VARIABLES
double setpoint_vert = 0;   // Vertical angular displacement that we want to achieve
int step_GR = 1 / 9;        // Gear ratio for the stepper motor
int T_step = 15;            // Sample  time for stepper motor in milliseconds(ms)
unsigned long last_timestep = millis();
const int stepsPerRev = 400;  // Steps per revolution (in this case half steps are used)
int stepPos = 0;            // How many steps the motor has taken away from reference point (0 is completely level)
double stepInterval = stepsPerRev * step_GR;
int maxStep = stepInterval * 0.25;

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

// PIN ASSIGNMENT
int HallLarge = 2;          // Hall sensor in the large motor
int HallSmall = 3;          // Hall sensor in the small motor
int StepMode = 4;           // HIGH for half step, LOW for full step
int StepClock = 5;          // Stepper motor clock
int StepDir = 6;            // Stepper direction
int C1outputPin = 9;        // The PWM pin used by controller 1
int C2outputPin = 10;       // The PWM pim used by controller 2
int inputCLK = 4;           // Pin for reading pulse A on the stand encoder (supports interrupts)
int inputDT = 5;            // Pin for reading pulse B on the stand encoder (supports interrupts)
int SS_PIN = 10;            // SPI Slave Select
int MOSI_PIN = 11;          // SPI Master-Out Slave-In
int MISO_PIN = 12;          // SPI Master-In Slave-Out - Only used for bi-directional mode which isn't used here but set up anyway
int SCK_PIN = 13;           // SPI clock
int MotorForSmall = 23;     // Forward direction for small motor
int MotorBackSmall = 25;    // Backward direction for small motor
int MotorForLarge = 27;     // Forward direction for large motor
int MotorBackLarge = 29;    // Backward direction for large motor
int horzDefault = 30;       // Goes high if pedstal horizontal orientation has returned to the reference point
int vertDefault = 32;       // Goes high if pedestal vertical orientation has returned to the reference point

// PEDESTAL VARIABLES
//bool pulseReading = 0;    // Truth check for checking if the stand has turned one encoder interval
//bool standIsZero = 0;     // Truth check for checking if the stand is reset during initialisation
double angInt = 1;          // Angular interval in the stand
double pedPos = 0;          // Pedestal position. Starts at 0 after initialisation, then increments/decrements by andInt when receiving encoder pulse
int standDir = 0;           // Current stand direction tracker. 1 for clockwise, 0 for counterclockwise.
int encCounter = 0;         // Counts pedestal horizontal position from the encoder
int encCurrentCounter;      // Current counter at time of updating. Used to track if counter has been updated.
int encPreviousCounter;     // Previous counter at time of updating. Used to track if counter has been updated.
int encCurrentStateCLK;     // Current state of the encoder input. Used to track pulses.
int encPreviousStateCLK;    // Previous state of the encoder input. Used to track pulses.


// ============================ SETUP ============================ //

void setup() {
  // Controller output (limited to 0-255)
  pinMode(C1outputPin, OUTPUT);
  pinMode(C2outputPin, OUTPUT);

  // Motor direction changing
  pinMode(MotorForSmall, OUTPUT);
  pinMode(MotorBackSmall, OUTPUT);
  pinMode(MotorForLarge, OUTPUT);
  pinMode(MotorBackLarge, OUTPUT);


  // Inputs for the pulses from the stand encoder as well as reference check for init
  pinMode(horzDefault, INPUT);
  pinMode(vertDefault, INPUT);

  // Stepper motor pins
  pinMode(StepMode, OUTPUT);
  pinMode(StepClock, OUTPUT);
  pinMode(StepDir, OUTPUT);

  // Interrupt pin for encoder checks

  // SPI pins
  pinMode(SCK_PIN, INPUT);
  pinMode(MOSI_PIN, INPUT);
  pinMode(MISO_PIN, OUTPUT);  // (only if bidirectional mode needed)
  pinMode(SS_PIN, INPUT);
}

// ============================ LOOP ============================ //

void loop() {
  current_time = millis();  // Saves the current time for the purpose of establishing sample rate

  PID_Control1(); // Calls controller 1
  PID_Control2(); // Calls controller 2
}
