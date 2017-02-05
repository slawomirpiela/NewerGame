class Player extends ReadAction{
  int x, y;
  float jitter, angle;
  char left, right;
  float rotatin, strength;
  
  //Constr
  Player(int x, int y, char left, char right){
    this.x = x;
    this.y = y;
    this.left = left;
    this.right = right;

  }
  
  void update(){
    rotatin = 90;
    strength = 1;
    x = mouseX;
    pushMatrix();
    translate(x,y);
    rotate(second()*radians(rotatin) * strength);
    if (checkKey(left))  
    {
      strength=- 0.5;
    }
    if (checkKey(right))
    {
      rotate(radians(90));
    }
    triangle(-30, 30, 0, -30, 30, 30); 
    popMatrix();
  }

  void hitSide(){
    if(mouseX == 0){
      x+=5;
    }
    if(mouseX == width){
      x-=100;
    }
    }
  void hitEnd(){
  }
}