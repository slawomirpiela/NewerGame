import java.util.*;

void setup()
{
  size(800,800);
  bullet1 = new Bullet(0, 0);
  play1 = new Player(0,height-30);
}

Player play1;
Bullet bullet1;

void draw()
{
  if(frameCount % 60 == 20){
  bullet1.draw();
  play1.update();
  }
}