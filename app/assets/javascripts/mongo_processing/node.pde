class Node extends BasicGraphObject{
  //Node geometry
  int X = 0;
  int Y = 0;
  int margin = 10;
  int width = 120;
  int height = 90;
  int radius = 5;
  String name = "Node";

  // Associations
  ArrayList incomingEdges = new ArrayList();
  ArrayList outgoingEdges = new ArrayList();

  Node(x, y){
    X = x;
    Y = y;
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
    String s = "(" + (int)X + " : " + (int)Y + ")";
    text(s, X + margin, Y + margin, width, height);
  }

  void updateGeometry(){
    maxX = X + width;
    maxY = Y + height;
    mouseOver = (mouseX > X) && (mouseX < maxX) && (mouseY > Y) && (mouseY < maxY);

    radius = radius + sin( frameCount / 4 );
    if(mouseOver && mousePressed == true){
      X+=(mouseX-midX());
      Y+=(mouseY-midY());
    }
  }

  int midX(){
    return (X + (height / 2) + margin);
  }

  int midY(){
    return (Y + (width / 2) - margin);
  }

}