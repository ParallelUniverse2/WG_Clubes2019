import java.util.Collections;
import java.util.HashSet;
import java.util.Set;

void keyPressed() {
  if (key == ' ') init();
  else if (key == '=') {numNodes++; init();}
  else if (key == '-') {numNodes--; init();}
  else if (key == 'z') {c -= 10; if(c<0) c=350; init();}
  else if (key == 'x') {c += 10; if(c>360) c=10; init();}
}

void init() {
  nodes = new HashSet();
  edges = new ArrayList<Edge>();
  
  for (int i = 0; i < numNodes; i++) {
    Node n = new Node(str(i));
    nodes.add(n);
  }
  
  for (Node n1 : nodes) {
    for (Node n2 : nodes) {
      float r = random(0,1);
      if (r < 0.4) {
        boolean cross = false;
        Edge e = new Edge(n1,n2);
        for (Edge e2 : edges) {
          if (intersect(e, e2)) cross = true;
        }
       if (!cross) edges.add(e);
      }
    }
  }
}
