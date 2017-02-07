class Ball
{
  int x, y;
  
  //Constructor
  Ball(int x, int y){
    this.x = x;
    this.y = y;
  }
  
  void draw(){
   fill(255);
   ellipseMode(CENTER);
   ellipse(x, y, 10, 10);
  }
  
}