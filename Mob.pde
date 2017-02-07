class Mob
{
  
  float x, y;
  PVector mobpos;

  
  Mob(float x, float y) {
    mobpos = new PVector(x,y);
  }
  
  void update() {
    
    x = mobpos.x;
    y = mobpos.y;
    for (int y = 0; y < 7; y++) {
      for (int x = 0; x < 20; x++) {
      Mobs.add(new Mob(x * 30, y * 30)); // Spawn mobs & add to array

      rect(x, y, 20, 20);
      fill(random(177,200));
      //update();
      //mobpos.y =+ 30;
      //.x = x+30;
      }
        
      } 
    
    
  }
}