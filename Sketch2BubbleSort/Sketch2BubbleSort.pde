int[] array = new int[30];
int maxVal = 100;
// visual parameters
int speed = 6;
int xStart = 90;
int lineSpace = 20;
int delX = 10;

void setup(){
  size(700, 650);
  for (int i = 0; i < array.length; i++) {
    array[i] = (int)random(maxVal);
  }
  frameRate(speed);
  colorMode(HSB, 360, 100, 100);
  background(0);
}

int i = 0;


void draw(){
  // erase previous text
  noStroke();
  fill(0);
  rect(0,0,70,650);
  rect(590,0,700,100);
  // steps
  fill(255);
  text("Steps: "+i, 600, 20);
  for (int j = 0; j < array.length; j++) {
    if (array[i] > array[j]) {
      int temp = array[j];
      array[j] = array[i];
      array[i] = temp;
    }
    
    // draw
    fill(255);
    text(array[j], 50, 30+20*j);
    
    float c = map(array[j], 0, maxVal, 0, 240);
    stroke(c, 100, 100);
    strokeWeight(10);
    
    line(xStart, 25+lineSpace*j, xStart + delX, 25+lineSpace*j);
    
  }
  xStart += delX;
  i++;
  if (i > array.length - 1) {
    noLoop();
  }
}
