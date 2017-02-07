class Player {
  PVector pos;
  char left, right;
  
  //Constr
  Player(int x, int y, char left, char right){
    pos = new PVector(x, y);
    this.left = left;
    this.right = right;
  }
  
  void update(){
    pos.x = mouseX - 30;
    int pwidth = 80;
    fill(0);
    stroke(0);
    strokeWeight(3); 
    rect(pos.x, pos.y, pwidth, 18, 7);
  }
  
  void mouseClicked(){
    
  }

}