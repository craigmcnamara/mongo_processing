class Node extends BasicMongoDbObject{
  //Node geometry
  int X = 0;
  int Y = 0;
  String info;
  int margin = 20;
  int width = 320;
  int height = 190;
  int radius = 5;
  String name = "Node";

  // Associations
  ArrayList incomingEdges = new ArrayList();
  ArrayList outgoingEdges = new ArrayList();

  Node(x, y, json){
    X = x;
    Y = y;
    info = json;
  }

  void draw(){
    updateGeometry();

    // Set fill-color to blue
    fill( 0, 121, 184 );

    // Set stroke-color white
    if(mouseOver || highlight){
      stroke(255);
    }else{
      stroke(155);
    }

    // Draw Box
    // rectMode(CENTER);
    rect( X, Y, width, height, radius );

    fill(0, 255, 255, 255);

    String str = "";
    for(var i in info){
      str += "{ " + i + " : "  + info[i] + " }\n";
    }
    text(str, X + margin, Y + margin, width, height);

    String s = "(" + (int)X + " : " + (int)Y + ")";
    text(s, X + width * .75, Y + height * .85, width, height);
  }

  void updateGeometry(){
    maxX = X + width;
    maxY = Y + height;
    mouseOver = (mouseX > X) && (mouseX < maxX) && (mouseY > Y) && (mouseY < maxY);

    radius = radius + sin( frameCount /  8);
    if(mouseOver && mousePressed == true){
      X+=(mouseX-midX());
      Y+=(mouseY-midY());
    }
    // Drift in space
    // X+=cos(frameCount / drift());
    // Y+=cos(frameCount / drift());
  }

  int midX(){
    return (X + (height / 2) + margin);
  }

  int midY(){
    return (Y + (width / 2) - margin);
  }

  void mouseReleased(){
    // alert(name);
  }

}