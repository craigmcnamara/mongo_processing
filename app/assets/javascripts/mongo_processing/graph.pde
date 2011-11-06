class Graph{
  ArrayList nodes = new ArrayList();
  ArrayList edges = new ArrayList();

  Graph(){
    nodes.add(new Node(100, 100));
    nodes.add(new Node(400, 100));
    nodes.add(new Node(100, 300));
    nodes.add(new Node(400, 300));
    
    edges.add(new Edge(nodes.get(0), nodes.get(1)));
    edges.add(new Edge(nodes.get(1), nodes.get(3)));
    edges.add(new Edge(nodes.get(3), nodes.get(2)));
    edges.add(new Edge(nodes.get(2), nodes.get(0)));
 }

 void draw(){
   fill(0, 255, 255, 255);
   String s = "(" + (int)mouseX + " : " + (int)mouseY + ")";
   text(s, mouseX+50, mouseY+50, 150, 150);
   for(i=0; i < edges.size(); i++){
     edges.get(i).draw();
   }
   for(i=0; i < nodes.size(); i++){
     nodes.get(i).draw();
   }
 }

 Object activeNode(){
   for(i=0; i < nodes.size(); i++){
     node = nodes.get(i);
     if(node.mouseOver){
       return node;
     }
   }
   for(i=0; i< edges.size(); i++){
     edge = edges.get(i);
     if(edge.mouseOver){
       return edge;
     }
   }
   return null;
 }

  // Mouse Events
  // globals mouseX and mouseY
  void mouseMoved(){
    if(activeNode() != null){
      activeNode().mouseMoved();
    }
  }

  void mouseClicked(){
    if(activeNode() != null){
      activeNode().mouseClicked();
    }
  }

  void mouseMouseDragged(){

  }

  void mouseMoved(){
    if(activeNode() != null){
      activeNode().mouseMoved();
    }
  }

  void mouseOut(){}

  void mousePressed(){
    if(activeNode() != null){
      activeNode().mousePressed();
    }
  }

  void mouseReleased(){
    if(activeNode() != null){
      activeNode().mouseReleased();
    }
  }

}