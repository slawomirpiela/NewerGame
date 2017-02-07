class Game implements Action{
  ArrayList<Mob> Mobs = new ArrayList<Mob>(); 
  Player play1;
  DIRECTION direction = DIRECTION.RIGHT;

  Game(){
    play1 = new Player(0, height - 80, 'a', 'd');
    
    for (int x = 1; x < 10; x++) {
      for (int y = 1; y < 10; y++){
      //mob1.update();
      
    translate(x,y);
      Mobs.add(new Mob(x * 50, y *30));

      //To check if correct amt of mobs have been spawned
      println(Mobs.size());
      }
    }
  }
  
  void update(){
    background(170,25,25);
    play1.draw();
    
     for (Mob mobbies : Mobs) {
      mobbies.display();
      mobbies.update();
      }
     
     if(direction == DIRECTION.RIGHT){
      for (Mob mobbies : Mobs){
        mobbies.toTheRight();
      }
    }
      
    if(Mobs.size() == 0) {
    println("Winnin'");
    }
    
    
    
  }
  
  void wall(){
    //Change direction where the mobs are going
    mobpos.x += second(); 
  }
  
  void end(){
    println("Losin'");
  }
}