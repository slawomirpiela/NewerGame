class Mob extends BasicActions //class
{
  PVector pos;
  Action action;;
  float r,g,b,a;
  boolean hit;

//Constructor
Mob(int x, int y, Action action, boolean hit){
  pos = new PVector(x,y);
  this.action = action;
  r = random(50,255);
  g = random(100,255);
  b = random(140,255);
  a = 199;
  this.hit = false;
  }
  
void update() {
  noStroke(); //The object for each mob will look like:
  fill(r,g,b,a);
  rect(pos.x, pos.y, 40, 15);
  collide(); //Calls the method that checks when the mob is hit
  
  //If the position of mobs x reaches the right side of the wall it calls the method that changes direction
  if (pos.x > width - 30) {
    action.rightWall(); 
  }
  //If the position of mobs x reaches the left side of the wall it calls the method that changes direction
  if (pos.x < 5 ){
    action.leftWall();
  }
}
//This method is called once the method-collide takes place, meaning that it happens when mob is hit
void dead(){
  r = 0;
  g = 0;
  b = 0;
  a = 0;
  hit = true;//Sets the value of the block that is hidden now to True so it can't be hit anymore
  game.display();//Calls the method that displays the score and the number of lives of the player
}
//Methods that is called when the directions are changed 
void toTheRight(){ //method that moves the mobs to the right
  pos.x += 1;
} 
void toTheLeft(){ //method that moves the mobs to the left
    pos.x -= 1;
}
void moveDown(){ //method that moves the mobs down, planning to implement it when the player increases the difficulty
    pos.y+=3;
}
//Method that calls the method('dead' - one that making deadmobs "disappear"),
//(changeDir from ball class, which sets the y-axis to opposite to the one it was coming from, so '*-1'
void collide(){
//Checks if the parameter "hit" of the mob object is false, to make sure it wasn't hit before
  if(hit == false){
    //Now it checks if the ball hits the lower part of a mob
    if (ball.pos.y + ball.pos.z/2 <= pos.y + 15 && ball.pos.y - ball.pos.z >= pos.y && ball.pos.x >= pos.x && ball.pos.x <= pos.x + 40){
      dead(); //Calls the method dead in order to make the mob disappear
      ball.changeDir(); //Calls the chang direction method to change direction in which the ball bounces off
      print("hit lower part"); //Prints when the if condition is met for testing purposes
      playerScore +=  1; //Adds a point to the player's score
    }
    if (ball.pos.y + ball.pos.z/2 >= pos.y && ball.pos.y - ball.pos.z /2 <= pos.y + 15 && ball.pos.x >= pos.x && ball.pos.x <= pos.x + 40) 
    {
      ball.changeDir(); //Calls the chang direction method to change direction in which the ball bounces off
      dead(); //Calls the method dead in order to make the mob disappear
      print("hit upper part"); //Prints when the if condition is met for testing purposes
      playerScore +=  1; //Adds a point to the player's score
    }   
    }
          
    //With the bottom
      if (ball.pos.y > height){
        ball.resetIfdies();
      }
 }
}
  

  