class Mob
{
  PVector mobpos;
  Action action;;
  Mob(int x, int y, Action action){
    mobpos = new PVector(x,y);
    this.mobpos.x = x;
    this.mobpos.y = y;
    this.action = action;
  }
  
  void draw() {
    //fill(random(170,255));
    stroke(0);
    strokeWeight(3); 
    rect(mobpos.x, mobpos.y, 40, 15);
    
  if (mobpos.x > width - 30 || mobpos.x < 0) {
    action.wall(); 
  }
   
  //if (mobpos.y > height - 20) {
  //  action.end();
  //}
    
   }
  
  void update() {

  }
  
  void toTheRight(){
    mobpos.x += 5;
  }
  
  void toTheLeft(){
    mobpos.x -= 3;
  }
  void moveDown(){
    mobpos.y+=3;
  }
  

  
}