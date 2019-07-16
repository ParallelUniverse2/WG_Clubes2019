int w, h, x, y;
ArrayList<myDot> dots;
int numDots = 300;

void setup() {
  colorMode(HSB,360,100,100);
  dots = new ArrayList<myDot>();
  for (int i = 0; i < numDots; i++) {
    w = int(random(20, 40)); // this was originally outside
    h = int(random(20, 40)); // the for loop, but I moved
    x = int(random(300,700)); // it in so x, y, w, h  are all 
    y = int(random(200,600)); // different for each dot
    myDot dot = new myDot(x,y,w,h);
    dots.add(dot);
  }
  size(1000, 800);
  background(120, 100, 100);
  w = 40; h = 80;
  x = 500; y = 400;
}

void draw() {
  //background(0,0,100);
  //fill(18, 100, 100);
  for (myDot d : dots) d.draw();
}
