  boolean t = true;
  boolean lt = true;
  boolean rt = true;
  boolean m = true;
  boolean b = true;
  boolean lb = true;
  boolean rb = true;
  IntList chars;
  IntList segments;


void setup(){
   size(800, 150);  
   displayChar(0);
}

void draw(){
  chars = new IntList(1,1,1,0,1,1,1, 0,1,0,0,0,1,0);
  background(0);
  //display(10, 10, 60, t, lt, rt, m, b, rb, lb);
}

void displayChar(int c){
  int n = chars.get(c);
  String[] segments = split(str(n), ',');
  //StringList segment = segments;
  
  //display(10, 10, 60, boolean(n[0]), boolean(n[1]), boolean(n[2]), boolean(n[3]), boolean(n[4]), boolean(n[5]), boolean(n[6]));
  display(10, 10, 60, boolean(segments[0]), boolean(segments[1]), boolean(segments[2]), boolean(segments[3]), boolean(segments[4]), boolean(segments[5]), boolean(segments[6]));
  }
  


void display(int topLeftx, int topLefty, int size, boolean t, boolean lt, boolean rt, boolean m, boolean b, boolean lb, boolean rb){
  stroke(255);
  strokeWeight(9);
  if (t){
    line(topLeftx, topLefty, topLeftx + size, topLefty);
  }
  if (lt){
    line(topLeftx, topLefty, topLeftx, topLefty + size);
  }
  if (rt){
    line(topLeftx + size, topLefty, topLeftx + size, topLefty + size);
  }
  if (m){
    line(topLeftx , topLefty + size, topLeftx + size, topLefty + size);
  }
  if (lb){
    line(topLeftx, topLefty + size, topLeftx, topLefty + size * 2);
  }
  if (rb){
    line(topLeftx + size, topLefty + size, topLeftx + size, topLefty + size * 2);
  }
  if (b){
    line(topLeftx, topLefty + size * 2, topLeftx + size, topLefty + size * 2);
  }
  
  
}