import java.util.*;


PVector mobpos;
PVector pos;
Game game;
void setup()
{
  size(1000, 800);
  game = new Game();
}


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
  background(255);
  game.update();

  //println(Mobs.size());
  //play1.hitSide();
  }