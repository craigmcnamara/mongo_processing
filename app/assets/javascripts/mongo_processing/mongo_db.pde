class MongoDb{
  ArrayList nodes = new ArrayList();
  ArrayList edges = new ArrayList();
  var collections;

  MongoDb(){
    loadCollections();
    // nodes.add(new Node(100, 100));
    // nodes.add(new Node(800, 100));
    // nodes.add(new Node(100, 600));
    // nodes.add(new Node(800, 600));
    //
    // edges.add(new Edge(nodes.get(0), nodes.get(1)));
    // edges.add(new Edge(nodes.get(1), nodes.get(3)));
    // edges.add(new Edge(nodes.get(3), nodes.get(2)));
    // edges.add(new Edge(nodes.get(2), nodes.get(0)));
 }

  void buildCollectionNodes(){
    collections.forEach(function(collection){
      var root = addNode(collection);
      getCollectionDocuments(root, root.info['name']);
    });
  }

  void getCollectionDocuments(root, collection_id){
    $.ajax({
      url: "/documents.json",
      dataType: 'json',
      data: 'id=' + collection_id,
      success: function(response){
        console.log(response['documents']);
        root.documents = response['documents'];
        root.documents.forEach(function(document){
          node = addNode(document);
          addEdge(root, node);
        });
      }
    });
  }

  void loadCollections(){
    $.ajax({
      url: "/collections.json",
      dataType: 'json',
      success: function(response){
        console.log(response['collections']);
        collections = response['collections'];
        buildCollectionNodes();
      }
    });
  }

 Object addNode(json){
   node = new Node(random(20, 1300), random(20, 1300), json)
   nodes.add(node);
   return node;
 }

 Object addEdge(origin, target){
   edges.add(new Edge(origin, target));
 }

 void draw(){
   fill(0, 255, 255, 255);
   String s = "(" + (int)mouseX + " : " + (int)mouseY + ")";
   text(s, mouseX+25, mouseY+25, 150, 50);
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