class Player extends BasicActions
{
  PVector pos;
  char left, right;
  int pwidth = 80;
  
  //Constr
  Player(int x, int y, char left, char right){
    pos = new PVector(x, y);
    this.left = left;
    this.right = right;
  }
  
  void update(){
    pos.x = mouseX - 30;
    fill(255);
    rectMode(CENTER);
    //rotateit();
    rect(pos.x, pos.y, pwidth, 18, 7);
  }

}