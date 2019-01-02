int numOfCircles = 1000;
int trys;
int perLoop;
x[];
y[];
r[];

void setup() {
  size(400, 400);
}


void draw() {
  background(0);
  noFill();
  stroke(255);
  int trys = 1;
  for (int i = 0; i < numOfCircles; i++) {
    ellipse(x[i], y[i], r[i] * 2, r[i] * 2);
  }
  for (int i = 0; i < numOfCircles; i++) {
    if (x[i] + r[i] < width && x[i] - r[i] > 0 && y[i] + r[i] < height && y[i] - r[i] > 0){
      boolean valid = true;
      for(int j = 0; j < numOfCircles; j++) {
        float dist = dist(x[i], y[i], x[j], y[j]);
        if(r[j] + r[i] > dist && j != i) {
          valid = false;
        }
      }
      if (valid){
        r[i] += 1;
   
      }
      
    }
  }
}