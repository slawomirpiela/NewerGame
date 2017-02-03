class Bullet extends ReadAction
{
  int x, y;
  //Constructor
  Bullet(int x, int y){
    this.x = x;
    this.y = y;
  }
  
  void draw(){
    fill(255);
    rect(random(0, width), random(height*.4, height), 10, 10);
    fill(255);
  }
  
  void hitSide(){
  }
  
  void hitEnd(){
  }
}