class Player {
  PVector pos;
  char left, right;
  
  //Constr
  Player(int x, int y, char left, char right){
    pos = new PVector(x, y);
    this.left = left;
    this.right = right;
  }
  
  void draw(){
    pos.x = mouseX - 30;
    int pwidth = 80;
    fill(255);
    stroke(0);
    strokeWeight(3); 
    rect(pos.x, pos.y, pwidth, 18, 7);
    if(pos.x == 50){
      pos.x = 5;
    }
  }
  
  void mouseClicked(){
    //Will do shot the ball
    //or will I do it in Ball class?
  }

}