class Mob extends BasicActions
{
  PVector mobpos;
  Action action;;
  float r;
  float g;
  float b;
  
  Mob(int x, int y, Action action){
    mobpos = new PVector(x,y);
    this.mobpos.x = x;
    this.mobpos.y = y;
    this.action = action;
    r = random(50,255);
    g = random(100,255);
    b = random(140,255);
  }
  
  void update() {
    //fill(random(170,255));
    fill(r,g,b);
    rect(mobpos.x, mobpos.y, 40, 15);
    
  if (mobpos.x > width - 30) {
    action.rightWall(); 
  }
  
  if (mobpos.x < 5 ){
    action.leftWall();
  }
   
  //if (mobpos.y > height - 20) {
  //  action.end();
  //}
  }
  
  void toTheRight(){
    mobpos.x += 2;
  } 
  void toTheLeft(){
    mobpos.x -= 2;
  }
  void moveDown(){
    mobpos.y+=3;
  }
  

  
}