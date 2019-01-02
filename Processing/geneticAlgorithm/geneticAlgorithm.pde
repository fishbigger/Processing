float playerx = 250;
float playery = 630;

void setup(){
  size(500, 650);
  background(255);
  
}

void draw(){
  noStroke();
  background(150);
  fill(0);
  ellipse(250, 50, 20, 20);
  fill(255, 20, 147);
  ellipse(playerx, playery, 10, 10);
  fill(135, 206, 250);
  rectMode(CENTER);
  rect(250, 400, 300, 20, 7);
  noFill();
  stroke(135, 206, 250);
  strokeWeight(3.5);
  rect(250, 325, 495, 645, 7);
  
  if (isDead()){
    println("Dead");
  }
}

void keyPressed(){
  if (key == CODED){
    if (keyCode == UP){
      playery -= 3;
    }
    if (keyCode == DOWN){
      playery += 3;
    }
    if (keyCode == LEFT){
      playerx -= 3;
    }
    if (keyCode == RIGHT){
      playerx += 3;
    }
  }
}

isDead(){
  if (playerx >= width - 5   ||playerx <= 5 ||playery >= height - 5 || playery <= 5 ){
    return true;
  }
  else{
    return false;
  }
    
     
    
      
}
  