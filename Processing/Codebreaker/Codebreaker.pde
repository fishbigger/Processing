int rounds = 0;
int c1 = color(255, 0, 255);
int c2 = color(0, 255, 255);
int c3 = color(255, 255, 0);
int c4 = color(255, 0, 0);

void setup(){
  size(300, 400);
}

void draw(){
  background(0);
  text("1-     2-     3-     4-", 20, 20);
  fill(c1);
  ellipse(43, 15, 10, 10);
  fill(c2);
  ellipse(77, 15, 10, 10);
  fill(c3);
  ellipse(111, 15, 10, 10);
  fill(c4);
  ellipse(144, 15, 10, 10);
  
  stroke(255);
  strokeWeight(10);
  line(0, height - 80, width, height - 80);
  noStroke();
  
  
  for (int i = 0; i < rounds + 1; i++){
    fill(c1);
    ellipse(50 ,height - 50, 40, 40);
    fill(c2);
    ellipse(100 ,height - 50, 40, 40);
    fill(c3);
    ellipse(150 ,height - 50, 40, 40);
    fill(255);
    text("1 right place", 200 ,height - 50);
    text("2 right colour", 200 ,height - 37);
  }
}