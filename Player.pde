class Player {
  PVector pos;
  char left, right;
  float theta = 0.0002;
  float ini;
  
  
  //Constr
  Player(int x, int y, char left, char right){
    pos = new PVector(x, y);
    this.left = left;
    this.right = right;
  }
  
  void draw(){
    pos.x = mouseX - 30;
    int pwidth = 80;

    fill(255);
    rectMode(CENTER);
    //rotateit();
    rect(pos.x, pos.y, pwidth, 18, 7);
    
    //need if statements to make sure it doesn't go to the sides
    //if(pos.x == 50){
    //  pos.x = 5;
    //}
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