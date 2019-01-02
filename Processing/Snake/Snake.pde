int[] snakeX = new int[1];
int[] snakeY = new int[1];
int foodX;
int foodY;
int scl = 50;
int dir = 0;
int oldX;
int oldY;

void setup(){
  size(550, 550);
  
  snakeX[0] = width/2;
  snakeY[0] = height/2;
  
  foodX = ((floor(random(0, width)/scl)) * scl) + (scl /2);
  foodY = ((floor(random(0, height)/scl)) * scl) + (scl /2);
  
  frameRate(2);
  
  oldX = width/2;
  oldY = width/2;
}

void draw(){
  background(0);
  rectMode(CENTER);
  
  if (dir == 0){
    int n = snakeY[0];
    snakeY[0] -= scl;
    int k = snakeY[1];
    snakeY[1] = n;

    for(int i = 0; i < snakeY.length; i++){
      if(i % 2 == 0){ 
        n = snakeY[i];
        snakeY[i] = k;
      }
      else{
        k = snakeY[i];
        snakeY[i] = n;
    }
  }
  if (dir == 1){
    n = snakeY[0];
    snakeY[0] += scl;
    k = snakeY[1];
    snakeY[1] = n;

    for(int i = 0; i < snakeY.length; i++){
      if(i % 2 == 0){ 
        n = snakeY[i];
        snakeY[i] = k;
      }
      else{
        k = snakeY[i];
        snakeY[i] = n;
    }
  }
  if (dir == 2){
    n = snakeY[0];
    snakeX[0] -= scl;
    k = snakeY[1];
    snakeY[1] = n;

    for(int i = 0; i < snakeY.length; i++){
      if(i % 2 == 0){ 
        n = snakeX[i];
        snakeX[i] = k;
      }
      else{
        k = snakeX[i];
        snakeX[i] = n;
    }
  }
  if (dir == 3){
    n = snakeY[0];
    snakeX[0] += scl;
    k = snakeX[1];
    snakeY[1] = n;

    for(int i = 0; i < snakeY.length; i++){
      if(i % 2 == 0){ 
        n = snakeX[i];
        snakeY[i] = k;
      }
      else{
        k = snakeX[i];
        snakeX[i] = n;
      }
    }
  }
  
  fill(255, 0, 100);
  rect(foodX, foodY, scl, scl);
  
  fill(255);
  for(int i = 0; i < snakeX.length; i++){
    rect(snakeX[i], snakeY[i], scl, scl);
  }
  
  if(snakeX[0] == foodX && snakeY[0] == foodY){
    foodX = ((floor(random(0, width)/scl)) * scl) + (scl /2);
    foodY = ((floor(random(0, height)/scl)) * scl) + (scl /2); 
    
    snakeX = append(snakeX, oldX);
    snakeY = append(snakeY, oldY);
  }

  oldX = snakeX[(snakeX.length) - 1];
  oldY = snakeY[(snakeY.length) - 1];
  }}}
  
  //println(snakeY.length);
}

void keyPressed(){
  if (key == CODED){
    if(keyCode == UP){
       dir = 0;
    }
    if(keyCode == DOWN){
       dir = 1;
    }
    if(keyCode == LEFT){
       dir = 2;
    }
    if(keyCode == RIGHT){
       dir = 3;
    }
  }
}