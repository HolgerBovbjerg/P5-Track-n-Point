#include <SPI.h>

// SPI configuration
uint8_t const chipSelectPin = 10;
// Command
const byte READ = 0b00000000;

// Interrupt
uint8_t const InterruptPin = 2;

// Variables
int Realpart1 = 0;
int *pRealpart1 = &Realpart1; 
int Imagpart1 = 0;
int *pImagpart1 = &Imagpart1; 
int Realpart2 = 0;
int *pRealpart2 = &Realpart2; 
int Imagpart2 = 0;
int *pImagpart2 = &Imagpart2; 
int Realpart3 = 0;
int *pRealpart3 = &Realpart3; 
int Imagpart3 = 0;
int *pImagpart3 = &Imagpart3; 


void setup()
{
    Serial.begin(115200);
  while (!Serial) {
    ; // wait
  }
  Serial.println("SPI test");
    SPI.begin();
    pinMode(chipSelectPin, OUTPUT );
    SPI.usingInterrupt(0);
  // Create interrupt
  attachInterrupt(digitalPinToInterrupt(InterruptPin), read_SPI, RISING); 
}

void loop() 
{
    
}

void read_SPI() {
  *pRealpart1 = readRegister(0x00);
  Serial.println(Realpart1);
  *pImagpart1 = readRegister(0x01);
  Serial.println(Imagpart1);
  Serial.println("Signal 1 read");
  *pRealpart2 = readRegister(0x02);
  Serial.println(Realpart2);
  *pImagpart2 = readRegister(0x03);
  Serial.println(Imagpart2);
  Serial.println("Signal 2 read");
  *pRealpart3 = readRegister(0x04);
  Serial.println(Realpart3);
  *pImagpart3 = readRegister(0x05);
  Serial.println(Imagpart3);
  Serial.println("Signal 3 read");
  Serial.println("Interrupt done");
}


unsigned int readRegister(byte thisRegister) {
  byte inByte = 0;           // incoming byte from the SPI
  unsigned int result = 0;   // result to return
  Serial.print(thisRegister, BIN);
  Serial.print("\t");
  
  
  // SCP1000 expects the register name in the upper 6 bits
  // of the byte. So shift the bits left by two bits:
  thisRegister = thisRegister << 2;
  // now combine the address and the command into one byte
  Serial.println(thisRegister, BIN);
  // take the chip select low to select the device:
  
  // Start SPI transaction
  SPI.beginTransaction(SPISettings(14000000, MSBFIRST, SPI_MODE0));
  digitalWrite(chipSelectPin, LOW);

// (Not implemented in VHDL)
//  // send the register to be read
//  SPI.transfer(thisRegister);
  
  // send a READ command
  result = SPI.transfer(READ);
  // Read 16 bits
  result = SPI.transfer16(result);
  digitalWrite(chipSelectPin, HIGH);
  SPI.endTransaction();

  // chip select high to de-select
  digitalWrite(chipSelectPin, HIGH);
  // return the result:
  return (result);
}
