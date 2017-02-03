class Player extends ReadAction{
  int x, y;
  
  //Constr
  Player(int x, int y){
    this.x = x;
    this.y = y;
  }
  
  void update(){
    x = mouseX;
    rect(x, y, 80, 20);
  }

  void hitSide(){
  }
  void hitEnd(){
  }
}