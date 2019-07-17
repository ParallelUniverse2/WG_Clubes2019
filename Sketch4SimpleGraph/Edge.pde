class Edge {
  Node start;
  Node end;
  int x1, y1, x2, y2;
  String type; int weight = 3;
  Edge (Node start, Node end) {
    this.start = start; this.end = end;
    this.weight = 3;
    this.x1 = (int)start.loc.x;
    this.y1 = (int)start.loc.y;
    this.x2 = (int)end.loc.x;
    this.y2 = (int)end.loc.y;
    
  }
  void draw(){
    stroke(0,150,0); strokeWeight(weight);
    line(start.loc.x, start.loc.y, end.loc.x, end.loc.y);
  }
}
