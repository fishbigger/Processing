import processing.core.*; 
import processing.data.*; 
import processing.event.*; 
import processing.opengl.*; 

import java.util.HashMap; 
import java.util.ArrayList; 
import java.io.File; 
import java.io.BufferedReader; 
import java.io.PrintWriter; 
import java.io.InputStream; 
import java.io.OutputStream; 
import java.io.IOException; 

public class sevenSegmentDisplay extends PApplet {

int[] zero = {1, 1, 1, 0, 1, 1, 1};
int[] one = {0, 0, 1, 0, 0, 0, 1};
int[] two = {1, 0, 1, 1, 1, 1, 0};
int[] three = {1, 0, 1, 1, 1, 0, 1};
int[] four = {0, 1, 1, 1, 0, 0, 1};
int[] five = {1, 1, 0, 1, 1, 0, 1};
int[] six = {1, 1, 0, 1, 1, 1, 1};
int[] seven = {1, 0, 1, 0, 0, 0, 1};
int[] eight = {1, 1, 1, 1, 1, 1, 1};
int[] nine = {1, 1, 1, 1, 0, 0, 1};
//String[] order  = {"zero", "one", "two", "three", "four", "five", "six", "seven", "eight", "nine"};
int[] count = {0, 0, 0, 0, 0, 0, 0, 0, 0 ,0};

public void setup(){
    
  frameRate(50);
}

public void draw(){
  background(0);
  int p = count.length;
  for(int i = 0; i < p; i++){
    //int tm = int(pow(10, n));
    //println(tm);
    //int c = count % tm;
    int tlx = 10 + (i * 80);
    int c = count[i];
    //println(count);
    
    
    if (c == 0){
      display(tlx, 10, 60, PApplet.parseBoolean(zero[0]), PApplet.parseBoolean(zero[1]), PApplet.parseBoolean(zero[2]), PApplet.parseBoolean(zero[3]), PApplet.parseBoolean(zero[4]), PApplet.parseBoolean(zero[5]), PApplet.parseBoolean(zero[6]));
    }
    else if(c == 1){
      display(tlx, 10, 60, PApplet.parseBoolean(one[0]), PApplet.parseBoolean(one[1]), PApplet.parseBoolean(one[2]), PApplet.parseBoolean(one[3]), PApplet.parseBoolean(one[4]), PApplet.parseBoolean(one[5]), PApplet.parseBoolean(one[6]));
    }
    else if(c == 2){
      display(tlx, 10, 60, PApplet.parseBoolean(two[0]), PApplet.parseBoolean(two[1]), PApplet.parseBoolean(two[2]), PApplet.parseBoolean(two[3]), PApplet.parseBoolean(two[4]), PApplet.parseBoolean(two[5]), PApplet.parseBoolean(two[6]));
    }
    else if(c == 3){
      display(tlx, 10, 60, PApplet.parseBoolean(three[0]), PApplet.parseBoolean(three[1]), PApplet.parseBoolean(three[2]), PApplet.parseBoolean(three[3]), PApplet.parseBoolean(three[4]), PApplet.parseBoolean(three[5]), PApplet.parseBoolean(three[6]));
    }
    else if(c == 4){
      display(tlx, 10, 60, PApplet.parseBoolean(four[0]), PApplet.parseBoolean(four[1]), PApplet.parseBoolean(four[2]), PApplet.parseBoolean(four[3]), PApplet.parseBoolean(four[4]), PApplet.parseBoolean(four[5]), PApplet.parseBoolean(four[6]));
    }
    else if(c == 5){
      display(tlx, 10, 60, PApplet.parseBoolean(five[0]), PApplet.parseBoolean(five[1]), PApplet.parseBoolean(five[2]), PApplet.parseBoolean(five[3]), PApplet.parseBoolean(five[4]), PApplet.parseBoolean(five[5]), PApplet.parseBoolean(five[6]));
    } 
    else if(c == 6){
      display(tlx, 10, 60, PApplet.parseBoolean(six[0]), PApplet.parseBoolean(six[1]), PApplet.parseBoolean(six[2]), PApplet.parseBoolean(six[3]), PApplet.parseBoolean(six[4]), PApplet.parseBoolean(six[5]), PApplet.parseBoolean(six[6]));
    } 
    else if(c == 7){
      display(tlx, 10, 60, PApplet.parseBoolean(seven[0]), PApplet.parseBoolean(seven[1]), PApplet.parseBoolean(seven[2]), PApplet.parseBoolean(seven[3]), PApplet.parseBoolean(seven[4]), PApplet.parseBoolean(seven[5]), PApplet.parseBoolean(seven[6]));
    } 
    else if(c == 8){
      display(tlx, 10, 60, PApplet.parseBoolean(eight[0]), PApplet.parseBoolean(eight[1]), PApplet.parseBoolean(eight[2]), PApplet.parseBoolean(eight[3]), PApplet.parseBoolean(eight[4]), PApplet.parseBoolean(eight[5]), PApplet.parseBoolean(eight[6]));
    } 
    else if(c == 9){
      display(tlx, 10, 60, PApplet.parseBoolean(nine[0]), PApplet.parseBoolean(nine[1]), PApplet.parseBoolean(nine[2]), PApplet.parseBoolean(nine[3]), PApplet.parseBoolean(nine[4]), PApplet.parseBoolean(nine[5]), PApplet.parseBoolean(nine[6]));
    }
  }
  if(count[9] == 9){
    count[9] = 0;
    if(count[8] == 9){
      count[8] = 0;
      if(count[7] == 9){
        count[7] = 0;
        if(count[6] == 9){
          count[6] = 0;
          if(count[5] == 9){
            count[5] = 0;
            if(count[4] == 9){
              count[4] = 0;
              if(count[3] == 9){
                count[3] = 0;
                if (count[2] == 9){
                  count[2] = 0;
                  if (count[1] == 9){
                     count[1] = 0;
                     count[0] = count[0] + 1;
                   }
                  else{
                    count[1] = count[1] + 1;
                  }
                }
                else{
                  count[2] = count[2] + 1;
                }
              }
              else{
                count[3] = count[3] + 1;
              }
            }
            else{
              count[4] = count[4] + 1;
            }
          }
          else{
            count[5] = count[5] + 1;
          }
        }
        else{
            count[6] = count[6] + 1;
        }
      }
      else{
        count[7] = count[7] + 1;
      }
    }
    else{
      count[8] = count[8] + 1;
    }
  }
  else{
    count[9] = count[9] + 1;
  }
}

  
  
  /*display(10, 10, 60, boolean(zero[0]), boolean(zero[1]), boolean(zero[2]), boolean(zero[3]), boolean(zero[4]), boolean(zero[5]), boolean(zero[6]));
  display(90, 10, 60, boolean(one[0]), boolean(one[1]), boolean(one[2]), boolean(one[3]), boolean(one[4]), boolean(one[5]), boolean(one[6]));
  display(170, 10, 60, boolean(two[0]), boolean(two[1]), boolean(two[2]), boolean(two[3]), boolean(two[4]), boolean(two[5]), boolean(two[6]));
  display(250, 10, 60, boolean(three[0]), boolean(three[1]), boolean(three[2]), boolean(three[3]), boolean(three[4]), boolean(three[5]), boolean(three[6]));
  display(330, 10, 60, boolean(four[0]), boolean(four[1]), boolean(four[2]), boolean(four[3]), boolean(four[4]), boolean(four[5]), boolean(four[6]));
  display(410, 10, 60, boolean(five[0]), boolean(five[1]), boolean(five[2]), boolean(five[3]), boolean(five[4]), boolean(five[5]), boolean(five[6]));
  display(490, 10, 60, boolean(six[0]), boolean(six[1]), boolean(six[2]), boolean(six[3]), boolean(six[4]), boolean(six[5]), boolean(six[6]));
  display(570, 10, 60, boolean(seven[0]), boolean(seven[1]), boolean(seven[2]), boolean(seven[3]), boolean(seven[4]), boolean(seven[5]), boolean(seven[6]));
  display(650, 10, 60, boolean(eight[0]), boolean(eight[1]), boolean(eight[2]), boolean(eight[3]), boolean(eight[4]), boolean(eight[5]), boolean(eight[6]));
  display(730, 10, 60, boolean(nine[0]), boolean(nine[1]), boolean(nine[2]), boolean(nine[3]), boolean(nine[4]), boolean(nine[5]), boolean(nine[6]));*/

public void display(int topLeftx, int topLefty, int size, boolean t, boolean lt, boolean rt, boolean m, boolean b, boolean lb, boolean rb){
  strokeWeight(9);
  
  if (t){
    stroke(255);
    line(topLeftx, topLefty, topLeftx + size, topLefty);
  }

  if (lt){
    stroke(255);
    line(topLeftx, topLefty, topLeftx, topLefty + size);
  }
  
  if (rt){
    stroke(255);
    line(topLeftx + size, topLefty, topLeftx + size, topLefty + size);
  }
  
  if (m){
    stroke(255);
    line(topLeftx , topLefty + size, topLeftx + size, topLefty + size);
  }
  
  if (lb){
    stroke(255);
    line(topLeftx, topLefty + size, topLeftx, topLefty + size * 2);
  }
  
  if (rb){
    stroke(255);
    line(topLeftx + size, topLefty + size, topLeftx + size, topLefty + size * 2);
  }
  

  if (b){
    stroke(255);
    line(topLeftx, topLefty + size * 2, topLeftx + size, topLefty + size * 2);
  }
}
  public void settings() {  size(800, 150); }
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "sevenSegmentDisplay" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
