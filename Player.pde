class Player extends BasicActions
{
  PVector pos;
  char left, right;
  float theta = 0.0002;
  float ini;
  int pwidth = 80;
  
  //Constr
  Player(int x, int y, char left, char right){
    pos = new PVector(x, y);
    this.left = left;
    this.right = right;
  }
  
  void update(){
    pos.x = mouseX - 30;
    fill(255);
    rectMode(CENTER);
    //rotateit();
    rect(pos.x, pos.y, pwidth, 18, 7);
    


    //keyPressed();
    //keyReleased();
  }
  
  //void rotateit(){
  //rotate(theta);
  //}
  
  void mouseClicked(){
    //Will do shot the ball
    //or will I do it in Ball class?
  }
  
  void keyPressed() {;
  if (keyCode == RIGHT) {
    theta = theta + 0.0009;
  }
  if (keyCode == LEFT){
    theta = theta - 0.0009;
  }
  if (theta >= 2*PI) theta = 0;
}
 
void keyReleased() {

}

}