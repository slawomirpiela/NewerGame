class SuperAttack{
  
PImage img;
  
void draw(){
  noStroke();
  fill(255, 0, 0);
  img = loadImage("bomb.png");
  image(img, random(20, width - 20), 20);
  }
}