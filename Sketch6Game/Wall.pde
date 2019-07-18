class Wall {
  float x, y;
  float gap = 200;
  float xv = -3;
  Wall(float _x, float _y) {
    this.x = _x; this.y = _y;
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
