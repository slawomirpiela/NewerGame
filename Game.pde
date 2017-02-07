class Game implements Action{
  ArrayList<Mob> Mobs = new ArrayList<Mob>(); 
  Player play1;
  DIRECTION direction = DIRECTION.RIGHT;

  Game(){
    play1 = new Player(0, height - 80, 'a', 'd');
    
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
    background(170,25,25);
    play1.draw();
    
     for (Mob mobbies : Mobs) {
      mobbies.draw();
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
    
  }
  
  void wall(){
    //Change direction where the mobs are going
    if(direction == DIRECTION.RIGHT){
        direction = DIRECTION.LEFT;
      //}
        //else{
        //direction = DIRECTION.RIGHT;
        //}
        //for (Mob mobbies : Mobs){
        //  mobbies.moveDown();
       // }
   }
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