class Player extends ReadAction{
  int x, y;
  
  //Constr
  Player(int x, int y){
    this.x = x;
    this.y = y;
    hitSide();
  }
  
  void update(){
    x = mouseX;
    rect(x, y, 80, 20);
  }

  void hitSide(){
    if(mouseX == 0){
      x+=5;
    }
    if(x == width){
      x-=100;
    }
    }
  void hitEnd(){
  }
}