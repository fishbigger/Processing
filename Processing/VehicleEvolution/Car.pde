class Car {
  int speed;
  float numOfWheels;
  float engineType;
  
  Car() {
    speed = 10;
    numOfWheels = random(2, 10);
    engineType = random(2);
  }
}