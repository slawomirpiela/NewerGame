class Mob
{
 
  
  Mob(float x, float y) {
    mobpos = new PVector(x,y);
    //this.mobpos.x = x;
    //this.mobpos.y = y;
  }
  
  void draw() {
    rect(mobpos.x, mobpos.y, 20, 20);
   }
   
  void update(){
     println(mobpos.x,mobpos.y);
  }
}