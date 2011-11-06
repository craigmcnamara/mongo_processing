// Global variables
var delay = 4;
var graph = new MongoDb();

// Setup the Processing Canvas
void setup(){
  initializeWindow();
  strokeWeight( 10 );
  frameRate( 60 );
}

// Main draw loop
void draw(){
  // Fill canvas grey
  background( 100 );

  // Draw the object MongoDb
  graph.draw();
}

// Set circle's next destination
// globals mouseX and mouseY
void mouseMoved(){
  graph.mouseMoved();
}

void mouseClicked(){
  graph.mouseClicked();
}

void mouseMouseDragged(){
  graph.mouseMouseDragged();
}

void mouseMoved(){
  graph.mouseMoved();
}

void mouseOut(){
  graph.mouseOut();
}

void mousePressed(){
  graph.mousePressed();
}

void mouseReleased(){
  graph.mouseReleased();
}