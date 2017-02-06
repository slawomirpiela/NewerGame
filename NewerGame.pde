import java.util.*;

void setup()
{
  size(1000,800);
  bullet1 = new Bullet(0, 0);
  play1 = new Player(0,height-80, 'a', 'd');
}

Player play1;
Bullet bullet1;
boolean[] keys = new boolean[1000];

void keyPressed()
{ 
  keys[keyCode] = true;
}
void keyReleased()
{
  keys[keyCode] = false; 
}
boolean checkKey(int k)
{
  if (keys.length >= k) 
  {
    return keys[k] || keys[Character.toUpperCase(k)];  
  }
  return false;
}

void draw()
{
  //if(frameCount % 60 == 0){
  bullet1.draw();
  background(255);
  

  play1.update();
  //play1.hitSide();
  //}
}