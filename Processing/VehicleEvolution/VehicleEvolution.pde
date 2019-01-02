ArrayList<Car> Cars = new ArrayList<Car>();
Car vehicle;

void setup() {
  size(700, 500);
  
  for(int i = 0; i < 10; i++) {
    Cars.add(new Car());
  }
}

void draw() {
  background(20, 150, 200);
  fill(100, 200, 10);
  noStroke();
  rect(0, 400, 700, 200);
  vehicle = Cars.get(0);
  drawCar(vehicle.numOfWheels, vehicle.engineType);
}

void drawCar(float numOfWheels, float engineType) {
  stroke(0);
  strokeWeight(2);
  
  float gap = 3;
  float widthWheel = 30;
  float offSet = widthWheel + gap;
  float right = width * 0.5 + ((numOfWheels * 0.5) * offSet);
  float left = right - numOfWheels * offSet;
  
  for(int i = 0; i < numOfWheels; i++) {
    fill(100);
    ellipse(right - i * offSet, 390, widthWheel, widthWheel);
    
    fill(0);
    ellipse(right - i * offSet, 390, widthWheel * 0.2, widthWheel * 0.2);
  }
  strokeWeight(10);
  line(left, 370, right + 20, 370);
  rect(width * 0.5 - 20, 350, (width) + 20, 350);
}