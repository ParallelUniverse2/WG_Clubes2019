class Node {
  String name;
  PVector loc;
  Node (String _name) {
    this.loc = new PVector(random(100,1100), random(100,400));
    this.name = _name;
  }
  void draw() {
    fill(180,100,100); 
    ellipse(loc.x, loc.y, 30, 30);
    fill(0); textSize(14); 
    text(name, loc.x-4, loc.y+4);
  }
}
