/*
* Arduino sends data to Processing Example
* CS5 Extra Credit
* Harvey Mudd College
* Maddie Zug
* June 2017 
 */
 
void setup() {
  // Set up a serial port with Baud rate 9600
  Serial.begin(9600);
}

void loop() {
  //Read analog input from pin A0
  int sensorValue = analogRead(A0);

  //Write the value to the serial port
  Serial.println(sensorValue);

  //Give some time between sending data
  delay(100);
}
