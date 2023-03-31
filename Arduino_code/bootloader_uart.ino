#include <SoftwareSerial.h>
#define header1 85
#define header2 170
#define header3 32

/*
 * Config serial RX/TX Arduino
 * nrf_with_dsPIC - transfer data between nrf and dsPIC
 * PC_with_nrf - transfer data between PC and nrf
 */
SoftwareSerial nrf_with_dsPIC(10,11); 
//SoftwareSerial PC_with_nrf(8,9); 

byte buffer_PC[256] = {};
byte buffer_dsPIC[256] = {};
byte data_from_PC = 0;
byte data_from_dsPIC = 0;
uint8_t count_PC = 0, count_dsPIC = 0;
uint8_t flag_write = 1;
uint8_t flag_nrf = 0;

void setup()
{
  //PC_with_nrf.begin(9600);
  Serial.begin(9600);
  nrf_with_dsPIC.begin(9600);
  //PC_with_nrf.begin(9600);
  //Serial.begin(9600);
}

void loop()
{
  if(Serial.available() > 0) 
  { 
      data_from_PC =  Serial.read();
      buffer_PC[count_PC] = data_from_PC; 
      count_PC = count_PC + 1;
      if(buffer_PC[0] == header1 && buffer_PC[1] == header2 && buffer_PC[2] == header3)
      {
          if(buffer_PC[4] == 0 || buffer_PC[4] == 8 || buffer_PC[4] == 11)
          {
              if(count_PC == 10)
              {  
                    for(uint8_t i = 0; i < count_PC; i++)
                    {
                        nrf_with_dsPIC.write(buffer_PC[i]);
                    }

                    for(uint8_t i = 0; i < count_PC; i++)
                    {
                        buffer_PC[i] = 0;
                    }
                    count_PC = 0;
              }
          }
          
          else if(buffer_PC[4] == 3)
          {
              if(count_PC == buffer_PC[3])
              { 
                  for(uint8_t i = 0; i < count_PC; i++)
                  {
                      nrf_with_dsPIC.write(buffer_PC[i]);
                      //Serial.print(buffer_PC[i], HEX);
                  }

                  for(uint8_t i = 0; i < count_PC; i++)
                  {
                      buffer_PC[i] = 0;
                  }
                  count_PC = 0;
              }
          }
          
          else if(buffer_PC[4] == 2)
          {
              if(count_PC == (buffer_PC[5] + 15))
              {
                    for(uint8_t i = 0; i < count_PC; i++)
                    {
                        nrf_with_dsPIC.write(buffer_PC[i]);
                    }
                    
                    for(uint8_t i = 0; i < count_PC; i++)
                    {
                        buffer_PC[i] = 0;
                    }

                    count_PC = 0;
                    
               } 
          }
      }
  }

  if(nrf_with_dsPIC.available() > 0)
  {   
      data_from_dsPIC = nrf_with_dsPIC.read();
      buffer_dsPIC[count_dsPIC] = data_from_dsPIC;
      count_dsPIC = count_dsPIC + 1;
      if( buffer_dsPIC[0] == header1 &&  buffer_dsPIC[1] == header2 &&  buffer_dsPIC[2] == header3)
      {
          if(buffer_dsPIC[4] == 8)
          {
              if(count_dsPIC == 17)
              {
                  for(uint8_t i = 0; i < count_dsPIC; i++)
                  {
                      Serial.write(buffer_dsPIC[i]);
                  }

                  for(uint8_t i = 0; i < count_dsPIC; i++)
                  {
                      buffer_dsPIC[i] = 0;
                  }
                  count_dsPIC = 0;
              }
          }

          else if(buffer_dsPIC[4] == 3)
          {
              if(count_dsPIC == 16)
              {
                  for(uint8_t i = 0; i < count_dsPIC; i++)
                  {
                      Serial.write(buffer_dsPIC[i]);
                  }

                  for(uint8_t i = 0; i < count_dsPIC; i++)
                  {
                      buffer_dsPIC[i] = 0;
                  }
                  count_dsPIC = 0;
              }
          }

          else if(buffer_dsPIC[4] == 2)
          {
              if(count_dsPIC == 16)
              {
                  for(uint8_t i = 0; i < count_dsPIC; i++)
                  {
                      Serial.write(buffer_dsPIC[i]);
                  }

//                  Serial.write(buffer_dsPIC, 15);

                  for(uint8_t i = 0; i < count_dsPIC; i++)
                  {
                      buffer_dsPIC[i] = 0;
                  }
                  count_dsPIC = 0;
              }
          }
      }    
  }
}
