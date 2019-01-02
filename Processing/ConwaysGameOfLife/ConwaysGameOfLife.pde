boolean[][] grid;
int cols, rows;
int scl = 3;

void setup(){
  size(700, 700);
  //fullScreen();
  fill(0);
  cols = width / scl;
  rows = height / scl;
  grid = new boolean[cols + 2][rows + 2];
  frameRate(30);
  
  for (int x = 0; x < cols + 2; x++){
    for (int y = 0; y < cols + 2; y++){
      grid[x][y] = false; 
    }
  }
  
  for (int x = 1; x < cols + 1; x++) {
    for (int y = 1; y < rows + 1; y++) {
      //random
      //boolean item = boolean(floor(random(2)));
      
      
      //checker board
      boolean item = boolean(((y % 2) + x) % 2);
      grid[x][y] = item;
      
      //checker board
      
      /*if (y % 2 == 1){
        boolean item = boolean(((x + 1) + (cols * y)) % 2);
        grid[x][y] = item; 
      }
      else {
        boolean item = boolean((x + (cols * y)) % 2);
        grid[x][y] = item; 
      }
      */
      

    }
  }
  show();
}

void draw(){
  update();
  show();
}

void update(){
  for (int x = 1; x < rows + 1; x++) {
    for (int y = 1; y < cols + 1; y++) {
        int neighbours = countNeighbours(x, y);
        
        if (grid[x][y]){
          if (neighbours < 2){
            grid[x][y] = false;
          }
          if (neighbours > 3){
            grid[x][y] = false;
          }
        }
        else{
          if (neighbours == 3){
            grid[x][y] = true;
          }
        }
      }
    }
  }

void show(){
  for (int x = 0; x < rows + 2; x++) {
    for (int y = 0; y < cols + 2; y++) {
      if (grid[x][y]){
        fill(0);
      }
      else{
        fill(255);
      }
      rect(x * scl, y * scl, scl, scl);
    }
  }
}

int countNeighbours(int x, int y){
  int count = 0;
  if(grid[x-1][y]){
    count++;
  }
  if(grid[x-1][y-1]){
    count++;
  }
  if(grid[x][y-1]){
    count++;
  }
  if(grid[x+1][y-1]){
    count++;
  }
  if(grid[x+1][y]){
    count++;
  }
  if(grid[x+1][y+1]){
    count++;
  }
  if(grid[x][y+1]){
    count++;
  }
  if(grid[x-1][y+1]){
    count++;
  }
  return count;
}