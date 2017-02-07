class Mob
{
  PVector mobpos;
  
  Mob(float x, float y) {
    mobpos = new PVector(x,y);
    this.mobpos.x = x;
    this.mobpos.y = y;
  }
  
  void update() {
    for (int i = 0; i < 7; i++) {
      mobpos.x =+40;
      for (int z = 0; z < 24; z++) {
      mobpos.y =+40;
      Mobs.add(new Mob(mobpos.x,mobpos.y)); // Spawn mobs & add to array
          fill(200);
    rect(mobpos.x+z*40, mobpos.y+i*40, 20, 20);
      //rect(x, y, 20, 20);
      //update();
      //mobpos.y =+ 30;
      //.x = x+30;
      }
    } 
  }
  void draw(){

    println(mobpos.x,mobpos.y);
  }
}