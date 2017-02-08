class Ball extends BasicActions
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
  
  void bounce(){
       //If statements to bounce it off the player
    if(y == play1.pos.y && x < play1.pos.x + (play1.pwidth/2) && x <= play1.pos.x + play1.pwidth ){
      println("true");
    left();
    changeDir();
    }
    if(y == play1.pos.y && x > play1.pos.x && x <= play1.pos.x + (play1.pwidth/2) ){
      println("true");
    right();
    }
    
    //If statements to bounce the ball off the sides
    if(x + d / 2 >= width){
      left();
    }
    if (x - d / 2 <= 0){
      right();
    }
    if (y - d / 2 <= 0)
    {
      changeDir();
    }
  }
}