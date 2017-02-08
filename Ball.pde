class Ball extends BasicActions
{
  PVector pos;
  float speedx, speedy; //Veliocity
  
  //Constructor
  Ball(float x, float y, float z){
    pos = new PVector(x, y, z);
    speedx = 0;
    speedy = 3;
  }
  
  void update(){
   fill(255);
   stroke(0);
   ellipseMode(CENTER);
   ellipse(pos.x, pos.y, pos.z, pos.z);
   pos.x += speedx;
   pos.y += speedy;
 }
  
  void resetIfdies(){
    if(noOfLives > 0){
    pos.x = width/2;
    pos.y = height/2;
    speedx = 0;
    speedy += 1;
    noOfLives -=1;
    }
    if(noOfLives == 0){
      //gameOver();
    }
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
    if(pos.y == play1.pos.y && pos.x < play1.pos.x + (play1.pwidth/2) && pos.x <= play1.pos.x + play1.pwidth ){
      println("true");
    left();
    changeDir();
    }
    if(pos.y == play1.pos.y && pos.x > play1.pos.x && pos.x <= play1.pos.x + (play1.pwidth/2) ){
      println("true");
    right();
    }
    
    //If statements to bounce the ball off the sides
    if(pos.x + pos.z / 2 >= width){
      left();
    }
    if (pos.x - pos.z / 2 <= 0){
      right();
    }
    if (pos.y - pos.z / 2 <= 0)
    {
      changeDir();
    }
  }
}