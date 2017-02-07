class Mob
{
  Mob(float x, float y) {
    mobpos = new PVector(x,y);
    //this.mobpos.x = x;
    //this.mobpos.y = y;
  }
  
  void display() {
    fill(random(170,255));
    stroke(0);
    strokeWeight(3); 
    rect(mobpos.x, mobpos.y, 20, 20);
   }
   
  void update(){
     println(mobpos.x,mobpos.y);
  }
}