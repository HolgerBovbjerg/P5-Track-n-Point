// include the SPI library:
#include <SPI.h>

SPISettings settingsA(1000000, MSBFIRST, SPI_MODE0); // 1 MHz

// set pin 10 as the slave select
const int slaveSelectPin = 10;

byte address = 1;
long data = 0;

void setup() {
  // set the slaveSelectPin as an output:
  pinMode(slaveSelectPin, OUTPUT);
  // initialize SPI:
  SPI.begin();
  // Start serial monitor
  Serial.begin(9600);
}

void loop() {
  //Serial.println("Start transaction");
  SPI.beginTransaction(settingsA);
  digitalWrite(slaveSelectPin, LOW);
  Serial.print("Address: ");
  Serial.println(address);
  unsigned int received = 0;
  received = SPI.transfer(address);
  Serial.println(received, BIN);
  for (int n = 0; n<5; n++)
  {
    // SPI.transfer(data,32)
    // Serial.println(data,BIN);
    received = SPI.transfer(0x00);
    Serial.println(received,BIN);
  }
  delay(1000);
  digitalWrite(slaveSelectPin, HIGH);
  //Serial.println("End transaction");
  SPI.endTransaction();
//  address = address + 1; 
//  if (address > 6) {
//    address = 1;
//  }
  delay(1000);
}
