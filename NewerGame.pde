int stage;
Game game;
GameMenu menu;

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