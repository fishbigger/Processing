int[][] grid = new int[500][500];
String[] lines;
String[] newList = new String[500];

/*lines = loadstrings("filename")

start from line 7

Take the line and split by " "

Build the array*/

void setup(){

  //printArray(grid);
}

void getData(){
  lines = loadStrings("salisbury1.txt");
  printArray(lines);
  for (int y = 0; y < 500; y++){
    newList = split(lines[y], ' ');
    //println(split(lines[y-7], ' '));
    for (int x = 0; x < 500; x++){
      //printArray(newList);
      int val = int(newList[x]);
      grid[x][y] = val;
    }
  }
}