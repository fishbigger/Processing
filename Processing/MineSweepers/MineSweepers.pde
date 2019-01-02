int cols = 10;
int rows = 10;

Cell[][] cell = new Cell[cols][rows];

void setup() {
  size(501, 501);
  background(255);
  for (int y = 0; y < cols; y++){
    for (int x = 0; x < rows; x++){
      cell[x][y] = new Cell(x, y);
    }
  }
}

void draw() {
  background(255);
  for (int y = 0; y < cols; y++){
    for (int x = 0; x < rows; x++){
      cell[x][y].show();
    }
  }  
}

class Cell {
  boolean revealed;
  boolean bee;
  float xpos;
  float ypos;
  float col;
  float row;
  float scl;
  float neighbours;
  float tempx;
  float tempy;
  Cell(float tempx, float tempy) {
    revealed = false; 
    col = tempx;
    row = tempy;
    bee = boolean(floor(random(2)));
    scl = 50;
    xpos = col * scl;
    ypos = row * scl;
    }
  }
  void countNeighbours(){
    int x;
    int y;
     if (!bee){
       x = int(col - 1);
       y = int(row + 1);
        if (cell[x][y] != null && cell[x][y].bee){
          neighbours++;
        }
        
       x = int(col - 1);
       y = int(row);
        if (cell[x][y] != null && cell[x][y].bee){
          neighbours++;
        }
        
       x = int(col - 1);
       y = int(row - 1);
       if (cell[x][y] != null && cell[x][y].bee){
          neighbours++;     
        }
        
       x = int(col);
       y = int(row + 1);
        if (cell[x][y] != null && cell[x][y].bee){
          neighbours++;
        }
        
       x = int(col);
       y = int(row);
        if (cell[x][y] != null && cell[x][y].bee){
          neighbours++;
        }
        
       x = int(col);
       y = int(row - 1);
       if (cell[x][y] != null && cell[x][y].bee){
          neighbours++;     
        }
        
       x = int(col + 1);
       y = int(row + 1);
        if (cell[x][y] != null && cell[x][y].bee){
          neighbours++;
        }
        
       x = int(col + 1);
       y = int(row);
        if (cell[x][y] != null && cell[x][y].bee){
          neighbours++;
        }
        
       x = int(col + 1);
       y = int(row - 1);
       if (cell[x][y] != null && cell[x][y].bee){
          neighbours++;     
        }
     }
  }
  void show() {
    float s = 0.5 * scl;
    countNeighbours();
    if (revealed) {
      fill(200);
      rect(xpos, ypos, scl, scl);
      text(xpos + s, ypos + s, neighbours);
    }
    else{
      fill(170);
      rect(xpos, ypos, scl, scl);
    }
    if (bee && revealed) {
      fill(255);
      ellipse(xpos + s, ypos + s, s, s);
    }
  }
  
  void toggle(){
    if (mouseX > xpos && mouseX < (xpos + scl) && mouseY > ypos && mouseY < (ypos + scl)){
      revealed = true;
    }
  }
}

void mousePressed(){
  for (int y = 0; y < cols; y++){
    for (int x = 0; x < rows; x++){
      cell[x][y].toggle();
    }
  }
}