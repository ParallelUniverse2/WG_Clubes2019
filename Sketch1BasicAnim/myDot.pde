class myDot {
  int x, y, w, h;
  int t = 0;
  color c;
  
  myDot(int x, int y, int w, int h) {
    this.x = x; this.y = y; this.w = w; this.h = h;
    this.c = color(random(360), 100, 100);
  }
  void move() {
    x += random(-t/3, t/3);
    y += random(-t/3, t/3);
  }
  void draw() {
    fill(c); move(); ellipse(x, y, w, h); t++;
  }
}
