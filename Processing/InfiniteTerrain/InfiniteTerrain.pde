int scl = 20;
int cols, rows, w, h;
float[][] grid;
color[][] gridC;
float flyingY = 0;
float flyingX = 0;
color[] green = new color[3];
float Yspeed;
float Xspeed;
float elevation;

void setup(){
  size(600, 600, P3D);
  //frameRate(1);
  
  w = 2001;
  h = 2000;
  cols = 500;
  rows = 500;
  
  elevation = height / 2;
  
  grid = new float[cols][rows];
  gridC = new color[cols][rows];
  
  green[0] = color(0, 150, 0);
  green[1] = color(50,205,50);
  green[2] = color(0,128,0);
  
  for (int y = 0; y < rows; y ++){
    for(int x = 0; x < cols; x ++){
      gridC[x][y] = green[int(random(green.length))];
    }
  }
}


void draw(){
  if (key == CODED){
    /*if (keyCode == RIGHT){
      speed = -0.05;
    }
    else if (keyCode == LEFT){
      speed = 0.05;
    */
    if(keyCode == UP){
      elevation += 5;
    }
    else if(keyCode == DOWN){
      elevation -= 5;
    }
  }
  else{
    if (key == 'w'){
      Yspeed = -0.05;
    }
    else if (key == 's'){
      Yspeed = 0.05;
    }
    else if (key == 'a'){
      Xspeed = -0.05;
    }
    else if (key == 'd'){
      Xspeed = 0.05;
    }
    else{
      //Yspeed = 0;
      //Xspeed = 0;
    }
  }
  flyingY += Yspeed;
  flyingX += Xspeed;
  getData();
  //rotateY(radians(angle));
  //rotateX(radians(angle));
  
  /*float yoff = flyingY;
  for (int y = 0; y < rows; y ++){
    //float xoff = flyingX;
    for(int x = 0; x < cols; x ++){
      
      grid[x][y] = map(noise(xoff, yoff), 0, 1, -200, 200);
      xoff += 0.1;
    }
    yoff += 0.1;
  }
  */
  
  background(173,191,255);
  stroke(255); 
  
  translate(width/2, elevation);
  rotateX(PI/3);
  
  translate(-w/2, -h/2);
  
  //randomSeed(int(flying));
  
  for (int y = 0; y < rows - 1; y ++){
    beginShape(TRIANGLE_STRIP);
    for(int x = 0; x < cols; x ++){
      if (grid[x][y] > 1000){
        fill(230);
        vertex(x*scl, y * scl, grid[x][y]);
        vertex(x*scl, (y + 1) * scl, grid[x][y + 1]);
      }
      else if (grid[x][y] > 700){
        fill(151);
        vertex(x*scl, y * scl, grid[x][y]);
        vertex(x*scl, (y + 1) * scl, grid[x][y + 1]);
      }
      else if (grid[x][y] > 0){
        fill(/*gridC[x][y]*/0,128,0);
        vertex(x*scl, y * scl, grid[x][y]);
        vertex(x*scl, (y + 1) * scl, grid[x][y + 1]);
      }
      else if (grid[x][y] > -2){
        fill(255,255,224);
        vertex(x*scl, y * scl, 0);
        vertex(x*scl, (y + 1) * scl, 0);
      }
      else {
        fill(0,0,240);
        vertex(x*scl, y * scl, 0);
        vertex(x*scl, (y + 1) * scl, 0);
      }

      //rect(x*scl, y*scl, scl, scl);
    }
    endShape();
  }
}

void getData(){
  String[] lines;
  String[] newList = new String[500];
  lines = loadStrings("ScafellPike1.txt");
  //printArray(lines);
  for (int y = 0; y < 500; y++){
    newList = split(lines[y], ' ');
    //println(split(lines[y-7], ' '));
    for (int x = 0; x < 500; x++){
      //printArray(newList);
      int val = int(newList[x]);
      grid[x][y] = val;
    }
  }
  //println(grid);
}