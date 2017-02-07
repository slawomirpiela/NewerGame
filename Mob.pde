class Mob
{
  int x, y;
  Mob(int x, int y) {
    //mobpos = new PVector(x,y);
    this.x = x;
    this.y = y;
  }
  
  void display() {
    //fill(random(170,255));
    stroke(0);
    strokeWeight(3); 
    //rect(mobpos.x, mobpos.y, 20, 20);
    rect(x, y, 40, 15);
   }
   
  void update(){
     println(mobpos.x,mobpos.y);
  }
}