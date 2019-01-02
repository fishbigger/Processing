void setup() {
  size(400, 400);
  background(0);
  noFill();
}
      
void draw() {
  stroke(255);
}
     
void mousePressed() {
  background(0);
  int Xwidth = 70;
  int Yheight = 70;
  float topLeftX = mouseX - Xwidth / 2;
  float topLeftY = mouseY - Yheight / 2;
  float topRightX = mouseX + Xwidth / 2;
  float topRightY = mouseY - Yheight / 2;
  
  float bottomLeftX = mouseX - Xwidth / 2;
  float bottomLeftY = mouseY + Yheight / 2;
  float bottomRightX = mouseX + Xwidth / 2;
  float bottomRightY = mouseY + Yheight / 2;
  line(topLeftX, topLeftY, bottomRightX, bottomRightY);
  line(topRightX, topRightY, bottomLeftX, bottomLeftY);
}