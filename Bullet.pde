class Bullet extends ReadAction
{
  int x, y;
  int speed = 2;
  //Constructor
  Bullet(int x, int y){
    this.x = x;
    this.y = y;
  }
  
  void draw(){
    //rect(mouseX, height-40, 10, 10);
    //fill(255);
   fill(255,0,0);
   rect(x, y, 10, 10);
   fill(255,255,255);
   
   y -= speed;
  }
  
  void hitSide(){
  }
  
  void hitEnd(){
  }
}