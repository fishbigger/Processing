void setup() {
  size(900, 600, P3D);
}

void draw() {
  background(51);
  lights();
  noStroke();
  pushMatrix();
  translate(width * 0.5, height * 0.5 - 30);
  fill(255, 218, 185);
  sphere(50);
  popMatrix();
  
  stroke(0);
  strokeWeight(10);
  
  point(width * 0.5 - 20, height * 0.5 - 33, 55);
  point(width * 0.5 + 20, height * 0.5 - 33, 55);
  
  strokeWeight(2);
  
  line(width * 0.5 - 20, height * 0.5 - 5, 55, width * 0.5 + 20, height * 0.5, 55);
  
  beginShape();
  fill(0, 200, 255);
  noStroke();
  for(int i = 0; i < 10; i++){
    pushMatrix();
    translate(width * 0.5, height * 0.5 + (70 + i * 5));
    
    sphere(50);
    popMatrix();
  }
  
  /* pushMatrix();
  translate(width * 0.5, height * 0.5 + 70 + 8);
  fill(0, 200, 255);
  sphere(50);
  popMatrix();
  endShape(); 
  */
  
}