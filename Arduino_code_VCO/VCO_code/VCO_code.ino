#define Debug Serial
int coef = 770; //Line offset from (0,0)
double angle = 2.1; // Line Angle 
int ReadPin = A1; 
int OutPin = A0;
const int FilterSize = 10;
int i = 0 ;
int total = 0 ;
int average = 0 ;
int roundAverage ;
int FilterArray[FilterSize];
int LM35_input_binary; 
double LM35_input_voltage;
double LM35_input_temperature;
double Output_calculation;
int Output;
void setup() {
  for (int thisOutput = 0; thisOutput < FilterSize; thisOutput++){
    FilterArray[thisOutput]=0;}
  analogReadResolution(12);
  analogWriteResolution(10);
  pinMode(A1, INPUT);
  Debug.begin(9600);
}

void loop() {
  LM35_input_binary = analogRead(ReadPin); //Reads LM35 from ADC
  delay(2); 
  LM35_input_voltage = 3300*((double)LM35_input_binary)/4096; //converts 12 bit ADC input to milli volts
  LM35_input_temperature = (LM35_input_voltage/10)-2; //converts 
  Output_calculation = (angle*LM35_input_temperature)+coef;
  total = total - FilterArray[i];
  Output = (int) Output_calculation;
  FilterArray[i] = Output; 
  total = total + FilterArray[i];
  i = i + 1;
  if (i >= FilterSize){i = 0;}
  average = total/FilterSize; 
  roundAverage = (int)average ; 
  analogWrite(OutPin,roundAverage);
  
  Debug.print(roundAverage);
  Debug.print(" output ");
  Debug.print(LM35_input_temperature);
  Debug.println(" temp input ");
}
