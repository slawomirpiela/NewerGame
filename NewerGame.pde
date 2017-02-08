int stage;
int noOfLives = 3;
int playerScore = 0;
Game game;
GameMenu menu;
Player play1;
Ball ball;
  ArrayList<Mob> Mobs = new ArrayList<Mob>(); 
  ArrayList<Mob> deadMobs = new ArrayList<Mob>();

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
  game.display();
}