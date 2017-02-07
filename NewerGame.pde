PVector mobpos;
PVector pos;
Game game;
void setup()
{
  size(1000, 800);
  game = new Game();
}

void draw()
{
  game.update();
  }