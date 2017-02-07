class Mob
{
  PVector mobpos;;
  Mob(int x, int y){
    mobpos = new PVector(x,y);
    this.mobpos.x = x;
    this.mobpos.y = y;
  }
  
  void display() {
    //fill(random(170,255));
    stroke(0);
    strokeWeight(3); 
    rect(mobpos.x, mobpos.y, 40, 15);
   }
  
  void update() {

  }
  
  void toTheRight(){
    mobpos.x += 1;
  }
  
  void toTheLeft(){
    mobpos.x -= 1;
  }
}