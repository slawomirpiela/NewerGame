class Game extends BasicActions implements Action {

DIRECTION direction = DIRECTION.RIGHT;

Game(){
  play1 = new Player(0, height - 80, 'a', 'd');
  ball = new Ball(width/2, height/2, 10);
    
  for (int x = 1; x < 10; x++) {
    for (int y = 1; y < 10; y++){     
      Mobs.add(new Mob(x*50, y*30, this, false));
      //println(Mobs.size()); //To check if correct amt of mobs have been spawned
    }
  }
}
  
void update(){
  background(0);
  play1.update();
  ball.update();
  ball.bounce();
    
  for (Mob mobbies : Mobs) {
    mobbies.update();
  }
     
    if(direction == DIRECTION.RIGHT) {
      for (Mob mobbies : Mobs) {
        mobbies.toTheRight();
      }
    }
    else if(direction == DIRECTION.LEFT){
      for (Mob mobbies : Mobs) {
        mobbies.toTheLeft();
      }
    } 
    if(Mobs.size() == 0) {
      println("Winnin'");
    }
}
  
  void rightWall(){
    //Change direction where the mobs are going
    if(direction == DIRECTION.RIGHT){
        direction = DIRECTION.LEFT;
      }
  }
  
  void leftWall(){
    if(direction == DIRECTION.LEFT){
          direction = DIRECTION.RIGHT;
        }
  }
  
  void display(){
    //fill(0);
    text("Lives : " + noOfLives, 50, 750);
    text("Score : " + playerScore, 50, 780);
  }
  
  void hit(){
      println("NO");
    

  }
  
  void end(){
    println("Losin'");
  }
}