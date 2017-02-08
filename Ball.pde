class Ball
{
  float x, y, d;
  float speedx, speedy; //Veliocity
  
  //Constructor
  Ball(){
    x = width/2;
    y = height/2;
    d = 10;
    speedx = 0;
    speedy = 4;
    
  }
  
  void draw(){
   fill(255);
   stroke(0);
   ellipseMode(CENTER);
   ellipse(x, y, d, d);
   x += speedx;
   y += speedy;
  }
  
}