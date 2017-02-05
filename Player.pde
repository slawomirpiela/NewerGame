class Player extends ReadAction{
  int x, y;
  
  //Constr
  Player(int x, int y){
    this.x = x;
    this.y = y;
  }
  
  void update(){
    x = mouseX;
    triangle(x-30, height - 50, x, height - 90, x+30, height - 50);
  }

  void hitSide(){
    if(mouseX == 0){
      x+=5;
    }
    if(mouseX == width){
      x-=100;
    }
    }
  void hitEnd(){
  }
}