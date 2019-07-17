//Use this class to color 

class DFS {
  ArrayList<Node> nodes;
  ArrayList<Edge> edges;
  int[] col1 = {8,9,11};
  int[] col2 = {12};
  int[] col3 = {10,13};
  int[] col4 = {14};
  
  DFS(ArrayList<Node> nodes, ArrayList<Edge> edges){
    this.nodes = nodes;
    this.edges = edges;
  }
  
  void colorNode(){
    //Hint -- 1 is the root 
    for(int i = 0; i<nodes.size(); i++){ 
      if (found(col1,int(nodes.get(i).name))){
        color c =  color(255,0,0);
        nodes.get(i).fillColor = c; //this changes the color 
      }
      if (found(col2,int(nodes.get(i).name))){
        color c =  color(200,150,0);
        nodes.get(i).fillColor = c; //this changes the color 
      }
      if (found(col3,int(nodes.get(i).name))){
        color c =  color(0,150,0);
        nodes.get(i).fillColor = c; //this changes the color 
      }
      if (found(col4,int(nodes.get(i).name))){
        color c =  color(0,150,150);
        nodes.get(i).fillColor = c; //this changes the color 
      }
    }
  }
}
