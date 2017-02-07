class Game {
  ArrayList<Mob> Mobs = new ArrayList<Mob>(); 
  Player play1;
  Mob mob1;

  Game(){
    play1 = new Player(0, height - 80, 'a', 'd');
    
    for (int a = 1; a < 5; a++) {
      for (int b = 1; b < 5; b++){
      //mob1.update();
      Mobs.add(new Mob(30, 30));

      //To check if correct amt of mobs have been spawned
      println(Mobs.size());
      }

    }
  }
  
  void update(){
    background(170,25,25);
    play1.draw();
     for (Mob mob1 : Mobs) {
      mob1.display();
      }
  }
}