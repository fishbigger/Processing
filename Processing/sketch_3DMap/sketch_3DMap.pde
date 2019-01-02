int w = 1200;
int h = 1200;
int cols, rows;
int scl = 15;
float[][] terrain;

void setup() {
  size(600, 600, P3D);
  cols = w / scl;
  rows = h / scl;
  
  terrain = new float[cols][rows];
  float yoff = 0;
  for (int y = 0; y < rows; y++){
    float xoff = 0;
    for (int x = 0; x < rows; x++){
      terrain[x][y] = map(noise(xoff, yoff), 0, 1, -100, 100);
      xoff += 0.2;
    }
    yoff += 0.2;
  }
}

void draw() {
  background(0);
  noFill();
  //fill(20, 255, 255);
  stroke(255);
  
  translate(width/2, height/2);
  rotateX(PI/3);
  translate(-w/2, -h/2);
  for (int y = 0; y < rows - 1; y++){
    for (int x = 0; x < cols - 1; x++){
      //rect(x*scl, y*scl, x+1*scl, y+1*scl);
       //<>//
      line(x*scl, y*scl, terrain[x][y], (x+1)*scl, y*scl, terrain[x+1][y]);
      line(x*scl, y*scl, terrain[x][y], x*scl, (y+1)*scl, terrain[x][y+1]);
    }
  }
}