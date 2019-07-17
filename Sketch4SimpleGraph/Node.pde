class Node {
  String name;
  PVector loc;
  Node (String _name) {
    this.loc = new PVector(random(100,1100), random(100,400));
    this.name = _name;
  }
  void draw() {
    fill(0); textSize(14); 
    text(name, loc.x, loc.y);
    fill(0, 255, 255); 
    ellipse(loc.x, loc.y, 20, 20);
  }
}
