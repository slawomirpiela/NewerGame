class Game implements Action{
  ArrayList<Mob> Mobs = new ArrayList<Mob>(); 

  SuperAttack attack;
  Ball ball;
  DIRECTION direction = DIRECTION.RIGHT;

  Game(){
    play1 = new Player(0, height - 80, 'a', 'd');
    attack = new SuperAttack();
    ball = new Ball(width/2, height/2, 10);
    
    for (int x = 1; x < 10; x++) {
      for (int y = 1; y < 10; y++){
      //mob1.update();
      
      Mobs.add(new Mob(x*50, y*30, this));

      //To check if correct amt of mobs have been spawned
      println(Mobs.size());
      }
    }
  }
  
  void update(){
    background(100,100,100);
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
      } else if(direction == DIRECTION.LEFT){
        for (Mob mobbies : Mobs) {
          mobbies.toTheLeft();
      }
     }
     hit();
      
    if(Mobs.size() == 0) {
    println("Winnin'");
    }
    
    //if(second() % 10 == 0){
    //  attack.draw();
    //}
    
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
        //for (Mob mobbies : Mobs){
        //  mobbies.moveDown();
       // }
  
  }
   

  
  void hit(){
    ArrayList<Mob> deadMobs = new ArrayList<Mob>();
    
    for (Mob mobbies : deadMobs) {
      Mobs.remove(mobbies);
    }
  }
  
  
  void end(){
    println("Losin'");
  }
}