class Player extends ReadAction{
  int x, y;
  float jitter, angle;
  
  //Constr
  Player(int x, int y){
    this.x = x;
    this.y = y;
  }
  
  void update(){
   x = mouseX;
    pushMatrix();
    translate(x,y);
    rotate(second()*radians(3));
    triangle(-30, 30, 0, -30, 30, 30); 
    popMatrix();
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