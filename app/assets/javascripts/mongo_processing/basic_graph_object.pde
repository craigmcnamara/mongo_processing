class BasicGraphObject{
  //Variables

  boolean mouseOver = false;
  boolean highlight = false;

  BasicGraphObject(){

  }

  // Mouse Events
  // globals mouseX and mouseY
  void mouseMoved(){

  }
  
  void setHighlight(show_highlight){
    this.highlight = show_highlight;
  }

  void mouseClicked(){
    // Right Click
    if(mouseButton == 39){
      alert("Close the records")
    }else{
      alert("Open the records")
    }
  }

  void mouseMouseDragged(){}

  void mouseMoved(){}

  void mouseOut(){}

  void mousePressed(){}

  void mouseReleased(){
    
  }

}