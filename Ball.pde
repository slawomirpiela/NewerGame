class Ball extends BasicActions
{
PVector pos;
float speedx, speedy; //Velocity
  
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
  
//Spawns another ball in the middle of the screen if a player has more than 0 lives
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
  
//Simple methods that change the speed of the ball on the y-axis when called 
void left(){
  speedx = -4;
}  
void right(){
  speedx = 4;
}
//Also, change the direction in which the ball is going
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