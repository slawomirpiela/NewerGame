int stage;
Game game;
GameMenu menu;
Player play1;
Ball ball;
  ArrayList<Mob> Mobs = new ArrayList<Mob>(); 

void setup()
{
  smooth();
  size(1000, 800);
  game = new Game();
  menu = new GameMenu();
}

void draw()
{
  menu.draw();
}