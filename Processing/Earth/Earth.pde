PImage earth;
PShape globe;
float angle;

void setup() {
  size(600, 600, P3D);
  earth = loadImage("Earth.jpg");
  
  globe = createShape(SPHERE, 200);
  globe.setTexture(earth);
  
  angle = 0;
  
}

void draw() {
  background(51);
  noStroke();
  translate(width * 0.5, height * 0.5);
  rotateY(angle);
  rotateX(10);
  shape(globe);
  
  angle += 0.01;
}