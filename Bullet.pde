class Bullet extends ReadAction
{
  int x, y;
  //Constructor
  Bullet(int x, int y){
    this.x = x;
    this.y = y;
  }
  
  void draw(){
    rect(mouseX, height-40, 10, 10);
    fill(255);
  }
  
  void hitSide(){
  }
  
  void hitEnd(){
  }
}