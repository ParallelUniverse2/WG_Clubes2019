class Wall {
  float x, y;
  float gap = 200;
  float xv;
  boolean hasCollided = false;
  Wall(float _x, float _y, float _xv) {
    this.x = _x; this.y = _y; this.xv = _xv;
  }
  void draw() {
    stroke(100,0,0);
    strokeWeight(25);
    line(x, 0, x, y-gap/2);
    line(x, y+gap/2, x, 600);
  }
  void move() {
    x += xv;
  }
}
