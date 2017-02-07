class Mob
{
  public PVector mobpos;
  
  Mob(float x, float y) {
    mobpos = new PVector(x,y);
    this.mobpos.x = x;
    this.mobpos.y = y;
  }
  
  void draw() {
    //int i = 0;
    //while (i < 7) {
    //  i = i + 1;
    //  mobpos.x = mobpos.x+40;
    //  mobpos.y = mobpos.y+40;
    //}
    rect(mobpos.x, mobpos.y, 20, 20);
   }
   
  void update(){
     println(mobpos.x,mobpos.y);
  }
}