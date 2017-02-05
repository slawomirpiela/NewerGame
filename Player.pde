class Player extends ReadAction{
  PVector pos;
  float jitter, angle;
  char left, right;
  float rotatin, strength;
  
  //Constr
  Player(int x, int y, char left, char right){
    pos = new PVector(x, y);
    this.left = left;
    this.right = right;

  }
  
  void update(){
    rotatin = 1;
    strength = 1;
    pos.x = mouseX;
    pushMatrix();
    translate(pos.x,pos.y);
    //rotate(millis()/10*radians(rotatin) * strength);
    println(radians(rotatin)*strength);
    if (checkKey(left))  
    {
      rotate(millis()/10*radians(1) * strength);
    }
    if (checkKey(right))
    {
      rotate(millis()/10*radians(-.01) * strength);
    }
    else
    {
      rotate(millis()/10*radians(0.5) * strength);
    }
    triangle(-30, 30, 0, -30, 30, 30); 
    popMatrix();
  }

  void hitSide(){
    if(mouseX == 0){
      pos.x+=5;
    }
    if(mouseX == width){
      pos.x-=100;
    }
    }
  void hitEnd(){
  }
}