class Player {
  PVector pos;
  //float jitter, angle;
  char left, right;
  float rotatin; //strength;
  
  //Constr
  Player(int x, int y, char left, char right){
    pos = new PVector(x, y);
    this.left = left;
    this.right = right;
  }
  
  void update(){
   // rotatin = 10;
    //strength = 1;
    pos.x = mouseX - 30;
    //pos.y = height - 80;
    int pwidth = 80;
    //pushMatrix();
    //translate(pos.x,pos.y);
    //println(radians(rotatin)*strength);
    println(pos.x,pos.y);
    /*if (checkKey(left))  
    {
      rotatin = second()*-9;
    }
    if (checkKey(right))
    {
      rotatin = second()*.5;
    }
    else
    {
      rotatin = second()*0.10;
    }
    rotate(second()*radians(rotatin));
    */
    fill(0);
    stroke(0);
    strokeWeight(3);
    
    rect(pos.x, pos.y, pwidth, 18, 7);
    //popMatrix();
    //if(mouseX > 300){
    //  pos.x=+95;
    //}
    //if(pos.x == width){
     // pos.x-=100;
    //}

  }

  void hitSide(){
    }
  void hitEnd(){
    }
}