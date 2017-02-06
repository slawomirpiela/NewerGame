class Mob extends ReadAction
{
  
  public int x, y;
  PVector mobpos;
  
  Mob(int x, int y) {
    mobpos = new PVector(x,y);
  }
  
  void draw() {
    for (int y = 0; y < 7; y++) {
      for (int x = 0; x < 20; x++) {
          fill(random(0,255));
          rect(x, y, 20, 20);
          x = x+50;
          y =y +50;
   
      } 
    }
   
  }

  
  void hitSide(){
  }
  void hitEnd(){
  }
}