#include <Arduino.h> 
#include "ecube_led.h"
#include "pitches.h"
#include "ecube_buzzer.h"
#include "ecube_ssd1306.h"
#include <Wire.h>
#include <Adafruit_GFX.h>
#include <Adafruit_SSD1306.h>
#include <ESP8266WiFi.h>
#include "I2Cdev.h"
#include "MPU6050.h"

//I2C Chain
void scan_i2c();
byte i2c_address[5];
unsigned int nDevices=0;

Adafruit_SSD1306 ssd_display(SCREEN_WIDTH, SCREEN_HEIGHT, &Wire, OLED_RESET);

MPU6050 sensor(0x68);
int16_t ax, ay, az;                       //RAW accelerometer data
int16_t gx, gy, gz;                       //RAW giroscope data
float ang_x, ang_y, ang_z,ang_disp;       //Rotation in Axis
float ang_x_prev, ang_y_prev, ang_z_prev; //Previous Rotation for Integration
unsigned char cube_face=0;                //Standing Cube Face
long tiempo_prev;                         //Actual Time of execution
float dt;                                 //Integration Step

const char* ssid = "SSID";                //WIFI Data
const char* password = "PWD";
WiFiServer server(80);
char buffers[100];

//BUZZER Melody Notes
int melody[] = {
  NOTE_C4, NOTE_G3, NOTE_G3, NOTE_A3, NOTE_G3, 0, NOTE_B3, NOTE_C4
};
int noteDurations[] = {
  4, 8, 8, 4, 4, 4, 4, 4
};

void setup() {
  initialize_led();
  initialize_buzzer();
  Serial.begin(115200);
  Wire.begin(); 
  scan_i2c();
  initialize_ssd1306(ssd_display);
  sensor.initialize();    //Iniciando el sensor
  if (sensor.testConnection()) Serial.println("Accelerometer Detected");
  else Serial.println("Error in Accelerometer");
  Serial.print("Connecting to WiFi : ");
  Serial.println(ssid);
  WiFi.begin(ssid, password); //Conexión a la red
  while (WiFi.status() != WL_CONNECTED)
  {
    delay(500);
    Serial.print(".");
  }
  Serial.println("");
  Serial.println("WiFi Connected");
  server.begin(); //Server Initialization
  Serial.println("Server Initialized");
  Serial.println("IP Addr:");
  Serial.println(WiFi.localIP()); //Obtain IP
  turn_led(LEDINT, LOW);
  turn_led(LED0, LOW);
  turn_led(LED1, LOW);
  turn_led(LED2, LOW);
 }

void loop() {
  turn_led(LEDINT,  HIGH); //Toggle Integrated Led
  WiFiClient client = server.available();
  if (client){
    Serial.println("New Client");
    while(!client.available()&& !client.connected()) //Wait for Client Request
      delay(1);
    Serial.println("Client Available");
    String linea1 = client.readStringUntil('r'); //Read First line of Request
    Serial.println(linea1);
    //Uses Link Request OnClick methods
    if (linea1.indexOf("LED0")>0) 
      toggle_led(LED0);
    if (linea1.indexOf("LED1")>0)
      toggle_led(LED1);
    if (linea1.indexOf("LED2")>0)
      toggle_led(LED2);
    if (linea1.indexOf("UPDATE")>0)
      scan_i2c();
    if (linea1.indexOf("BUZZER")>0)
      play_melody(melody,noteDurations,8); 
    if (linea1.indexOf("SSDI2C")>0)
      test_ssd1306(ssd_display);
    client.flush(); 
    Serial.println("Enviando respuesta...");
    //HTML Header       
    client.println("HTTP/1.1 200 OK");
    client.println("Content-Type: text/html");
    client.println("Connection: close");// La conexión se cierra después de finalizar de la respuesta
    //client.println("Refresh: 1");
    client.println();
    //HTML BODY
    client.println("<!DOCTYPE HTML>");
    client.println("<html>");
    client.println("<head><title>Test ESP8266</title>");
    client.println("<body>");
    client.println("<h1 align='center'>Test ESP8266</h1>"); 
    client.println("<div style='text-align:center;'>");
    client.println("<br />");            
    client.println("<button onClick=location.href='./LED0'>LED0</button>");           
    client.println("<button onClick=location.href='./LED1'>LED1</button>");
    client.println("<button onClick=location.href='./LED2'>LED2</button>");           
    client.println("<br />");  
    client.print("<button onClick=location.href='./?UPDATE'>SCAN_I2C</button>");
    for (int i=0; i<nDevices; i++){
      sprintf (buffers, "  ADDR: 0x%X\t", i2c_address[i]);
      client.print(buffers);
    }
    client.println("<br />");
    client.println("<button onClick=location.href='./BUZZER'>BUZZER</button>");  
    client.println("<br />");
    client.println("<button onClick=location.href='./SSDI2C'>SSD</button>");  
    client.println("<br />");
    client.print("<button onClick=location.href='./MPU'>MPU</button>");  
    sprintf (buffers, "    Active_face: %d \t",cube_face);
    client.print(buffers);
    //Display Rotation on active face
    if(cube_face==1 ||cube_face==2)//Z
      ang_disp=ang_z;
    else if(cube_face==5||cube_face==6) //X
      ang_disp=ang_x;
    else if(cube_face==3||cube_face==4) //Y
      ang_disp=ang_y;
    sprintf (buffers, "    Rotation: %f",ang_disp*900);
    client.print(buffers);
    client.println("<br />");
    client.println("</div>");
    client.println("</body>");
    client.println("</html>");
    delay(1);
    Serial.println("respuesta enviada");
    Serial.println();
    client.flush(); 
    //client.stop(); te echa de la web
  }
  float ax_m_s2;
  float ay_m_s2;
  float az_m_s2;
  sensor.getAcceleration(&ax, &ay, &az);
  sensor.getRotation(&gx, &gy, &gz);
  dt = (millis()-tiempo_prev)/1000.0;
  tiempo_prev=millis();
  ax_m_s2 = ax * (9.81/16384.0);
  ay_m_s2 = ay * (9.81/16384.0);
  az_m_s2 = az * (9.81/16384.0);
  ang_x = (gx/131)*dt/1000.0 + ang_x_prev;
  ang_y = (gy/131)*dt/1000.0 + ang_y_prev;
  ang_z = (gz/131)*dt/1000.0 + ang_z_prev;
  ang_x_prev=ang_x;
  ang_y_prev=ang_y;
  ang_z_prev=ang_z;
  if(az_m_s2>8)
    cube_face=1;
  else if (az_m_s2<-8)
    cube_face=2;
  else if (ax_m_s2>8)
    cube_face=5;
  else if (ax_m_s2<-8)
    cube_face=6;
  else if (ay_m_s2<-8)
    cube_face=3;
  else if (ay_m_s2>8)
    cube_face=4;
  else
    cube_face=0;
  //TODO: Reset Giriscope values when changin the active face
  ssd_display.clearDisplay();
  ssd_display.setTextSize(1.9);   // Normal 1:1 pixel scale
  ssd_display.setTextColor(WHITE);// Draw white text
  ssd_display.setCursor(0,0);     // Start at top-left corner
  ssd_display.print("ax_m_s2: \t");
  ssd_display.println(ax_m_s2);
  ssd_display.print("ay_m_s2: \t");
  ssd_display.println(ay_m_s2);
  ssd_display.print("az_m_s2: \t");
  ssd_display.println(az_m_s2);
  ssd_display.print("eCube Face: \t");
  ssd_display.println(cube_face);
  ssd_display.print("Angulo X: \t");
  ssd_display.println(ang_x*900);
  ssd_display.print("Angulo Y: \t");
  ssd_display.println(ang_y*900);
  ssd_display.print("Angulo Z: \t");
  ssd_display.println(ang_z*900);
  ssd_display.display(); 
  turn_led(LEDINT, LOW);
  delay(100);
}

void scan_i2c(){
  byte error, address;
  Serial.println("Scanning...");
  nDevices=0;
  for(address = 1; address < 127; address++ )
  {
    Wire.beginTransmission(address);
    error = Wire.endTransmission();
    if (error == 0)
    {
      Serial.print("I2C Device in ADDRESS 0x");
      if (address<16)
        Serial.print("0");
      i2c_address[nDevices]=address;
      Serial.print(address,HEX);
      Serial.println("  !");
      nDevices++;
    }
    else if (error==4)
    {
      Serial.print("Unknown error in ADDRESS 0x");
      if (address<16)
        Serial.print("0");
      Serial.println(address,HEX);
    }    
  }
  if (nDevices == 0)
    Serial.println("No I2C Device connected\n");
  else
    Serial.println("Done\n");
  delay(1000);    
}
