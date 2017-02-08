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
  
  void update(){
   fill(255);
   stroke(0);
   ellipseMode(CENTER);
   ellipse(x, y, d, d);
   x += speedx;
   y += speedy;
  }
  
  void resetIfdies(){
    x = width/2;
    y = height/2;
    speedx = 0;
    speedy = 4;
  }
  
  void left(){
    speedx = -4;
  }
  
  void right(){
    speedx = 4;
  }
  
  void changeDir(){
    speedy *= -1;
  }
}