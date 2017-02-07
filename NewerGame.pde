import java.util.*;

void setup()
{
  size(1000, 800);
  mob1 = new Mob(0, 0);
  play1 = new Player(0, 0, 'a', 'd');
}


Player play1;
Mob mob1;
boolean[] keys = new boolean[1000];
List<Mob> Mobs = new ArrayList<Mob>(); 


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
  //mob1.draw();
  background(255);


  play1.update();
  mob1.update();
  println(Mobs.size());
  //play1.hitSide();
  }