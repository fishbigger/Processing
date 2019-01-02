int scl, cols, rows;

void setup() {
  size(600, 600);
  scl = 60;
  cols = width / scl;
  rows = height / scl;
}

void draw() {
  noStroke();
  fill(150, 0, 0);
  rect(0, 0, width / 2, height);
  
  fill(0, 0, 150);
  rect(width / 2, 0, width, height);
  
  stroke(0);
  strokeWeight(10);
   for(int i = 0; i < cols; i++) {
     for(int j = 0; j < rows; j++) {
       noFill();
       rect(i * scl, j * scl, (i + 1) * scl, (j + 1) * scl);
     }
   }
   
   fill(100);
   rect(0, 0, scl, scl);
   rect(width, height, -scl, -scl);
  
}