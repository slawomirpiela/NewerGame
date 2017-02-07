class GameMenu {
  
int stage = 1;
  
void draw(){
  if(stage == 1){
    textAlign(CENTER);
    text("Brick Breaking Game", width/2, 200);
    text("Start Game", width/2, 350);
    text("Options", width/2, 400);
    text("Quit", width/2, 450);
  }
  if(mousePressed == true && mouseX > 420 && mouseX < 600 && mouseY > 330 && mouseY < 370 ){
    stage = 2;
  }
  if(mousePressed == true && mouseX > 420 && mouseX < 600 && mouseY > 370 && mouseY < 410 ){
    stage = 3;
  }
  if(mousePressed == true && mouseX > 420 && mouseX < 600 && mouseY > 410 && mouseY < 490 ){
    stage = 4;
  }
  if(stage == 2){
    game.update();
  }
}
}