class SuperAttack{
  
PImage img;
float randA = random(20,width-20);
  
void draw(){
  noStroke();
  fill(255, 0, 0);
  img = loadImage("bomb.png");
  img.resize(50,50);
  image(img, randA, 20);
  }
}