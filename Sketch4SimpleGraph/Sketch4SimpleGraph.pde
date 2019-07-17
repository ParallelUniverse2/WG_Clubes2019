ArrayList<Edge> edges;
HashSet<Node> nodes;
int numNodes = 7;
int c = 0;

void setup() {
  size(1200,500);
  colorMode(HSB,360,100,100);
  init();
}
void draw() {
  background(c,100,100);
  for (Edge e : edges) e.draw();
  for (Node n : nodes) n.draw();
}
boolean intersect(Edge a, Edge b){
  if( ((a.x1-a.x2)*(a.y2-b.y1) - (a.x2-b.x1)*(a.y1-a.y2)) * 
  ((a.x1-a.x2)*(a.y2-b.y2) - (a.x2-b.x2)*(a.y1-a.y2)) < 0 &&
  ((b.x1-b.x2)*(b.y2-a.y1) - (b.y1-b.y2)*(b.x2-a.x1)) * 
  ((b.x1-b.x2)*(b.y2-a.y2) - (b.y1-b.y2)*(b.x2-a.x2)) < 0 )
    return true;
  return false;
}
