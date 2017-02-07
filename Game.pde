class Game {

  List<Mob> Mobs = new ArrayList<Mob>(); 
  Player play1;
  Mob mob1;

  Game(){
    mob1 = new Mob(0, 0);
    play1 = new Player(0, height - 80, 'a', 'd');
    
    for (int a = 0; a < 10; a++) {
      for (int b = 0; b < 20; b++){
      Mobs.add(new Mob(mobpos.x, mobpos.y));
      //To check if correct amt of mobs have been spawned
      println(Mobs.size());
      }
    }
  }
  
  void update(){
    background(0);
    for (Mob mob1 : Mobs) {
      mob1.draw();
    }
    play1.draw();
  }
}