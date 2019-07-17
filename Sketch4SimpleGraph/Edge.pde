class Edge {
  Node start;
  Node end;
  String type; int weight = 3;
  Edge (Node start, Node end) {
    this.start = start; this.end = end;
    this.weight = 3;
  }
  void draw(){
    stroke(0,150,0); strokeWeight(weight);
    line(start.loc.x, start.loc.y, end.loc.x, end.loc.y);
  }
}
