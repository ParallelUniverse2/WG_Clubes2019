class Player {
  int size;
  float x, y;
  float vy = 0;
  color c;
  Player(float _x, float _y, int _size, color _c) {
    this.x = _x; this.y = _y; this.size = _size; this.c = _c;
  }
  void move() {
    y += vy;
    vy += 0.35;
  }
  void draw() {
    fill(c);
    strokeWeight(2);
    ellipse(x, y, size, size);
  }
}
