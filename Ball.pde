class Ball
{
  int x, y;
  int speed = 5;
  
  //Constructor
  Ball(int x, int y){
    this.x = x;
    this.y = y;
  }
  
  void draw(){
   fill(255);
   ellipseMode(CENTER);
   ellipse(x, y, 10, 10);
   
   y-=3;
  }
  
}