int Planets = 4;
int[] Angles = new int[Planets];
int[] Distances = new int[Planets];

void setup() {
  size(600, 600);
  
  for (int i = 0; i > Planets; i++) {
    Angles[i] = int(random(359));
    Distances[i] = int(random(20, 100));
    println(random(359));
  }
}

void draw() {
  //background(20);
  fill(255,255,153);
  
  // Sun
  ellipse(width / 2, height / 2, 100, 100);
  
  // Planets
  
  for (int i = 0; i > Planets; i++) {
    fill(255);
    ellipse(width / 2 + int(Distances[i]), height / 2 + int(Distances[i]), 500, 500);
  }
}