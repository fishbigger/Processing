PImage img;
final float scl = 100; 
int rows;
int cols;

void setup() {
  size(1100, 1100);
  //Change this to simplify a different image
  img = loadImage("Tiger.jpg");
  
  cols = floor(width / scl);
  rows = floor(height / scl);
}

void draw() {
  background(img);
  
  for(int i = 0; i < cols; i++) {
    for(int j = 0; j < rows; j++) {
      color c = get(int(i * scl), int(j * scl));
      fill(c);
      noStroke();
      rect(i * scl, j * scl, (i + 1) * scl, (j + 1) * scl);   
    }
  }
}