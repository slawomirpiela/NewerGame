class SuperAttack extends BasicActions
{
  float randA;
  
  SuperAttack(){
    randA = random(20,770);
  }
PImage img;
  
void update(){
  img = loadImage("bomb.png");
  img.resize(50,50);
  image(img, randA, 20);
  }
}