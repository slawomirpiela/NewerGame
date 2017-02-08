//Interface classes
interface Action{
  void end();
  void leftWall();
  void rightWall();
}

//Sets global directions for the mobs
public enum DIRECTION {
    LEFT, RIGHT
}