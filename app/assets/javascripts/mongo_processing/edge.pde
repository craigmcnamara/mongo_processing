class Edge extends BasicMongoDbObject{
  Node o;
  Node t;
  String name = "Edge";
  
  Edge(origin, target){
    o = origin;
    t = target;
  }
  
  void draw(){
    origin  = [o.midX(), o.midY()];
    target  = [t.midX(), t.midY()];
    mouse   = [mouseX, mouseY];
    mouseOver = is_between(origin,target, mouse);
    // Set stroke-color white    
    if(mouseOver || highlight){
      stroke(255);
    }else{
      stroke(155);
    }
    line(o.midX(), o.midY(), t.midX(), t.midY());
  }
  
  float distance(a, b){
    return sqrt(sq(a[0] - b[0]) + sq(a[1] -b[1]));
  }
  
  boolean is_between(a,b,c){
    return abs(distance(a,c) + distance(c,b) - distance(a,b)) < 5;
  }
  
  void mouseReleased(){
    alert(name);
  }
  
}
