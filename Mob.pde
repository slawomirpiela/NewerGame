class Mob extends BasicActions
{
  PVector pos;
  Action action;;
  float r;
  float g;
  float b;
  float xvalue, yvalue;
  boolean hit;
  
  Mob(int x, int y, Action action, boolean hit){
    pos = new PVector(x,y);
    this.action = action;
    r = random(50,255);
    g = random(100,255);
    b = random(140,255);
    this.hit = false;
  }
  
  void update() {
    //fill(random(170,255));
    fill(r,g,b);
    rect(pos.x, pos.y, 40, 15);
    collision();
    
  if (pos.x > width - 30) {
    action.rightWall(); 
  }
  
  if (pos.x < 5 ){
    action.leftWall();
  }
   
  //if (mobpos.y > height - 20) {
  //  action.end();
  //}
  }
  
  void toTheRight(){
    pos.x += 2;
  } 
  void toTheLeft(){
    pos.x -= 2;
  }
  void moveDown(){
    pos.y+=3;
  }
  
  void display(){

  } 

  void collision(){
      if (ball.pos.y - ball.pos.z / 2 <= pos.y + 15 &&  ball.pos.y - ball.pos.z >= pos.y && ball.pos.x >= pos.x && ball.pos.x <= pos.x + 40  && hit == false )
      {
        hit = true;
        ball.changeDir();
      }
 }
}
  

  