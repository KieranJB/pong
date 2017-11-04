class Game {
  
  Player player1;
  Player player2;
  
  public Game(){
    player1 = new Player(Side.LEFT,  color(200,123,0));
    player2 = new Player(Side.RIGHT, color(0,252,145));
  }
  
  void tick(){
    
    player1.tick(); // run player tick
    player2.tick();
  }
  
  void moveUpPlayer1() {
    player1.moveUp();
  }
  
  void moveDownPlayer1(){
    player1.moveDown();
  }
  
  void stopPlayer1(){
    player1.stop();
  }
  
  void moveUpPlayer2() {
    player2.moveUp();
  }
  
  void moveDownPlayer2(){
    player2.moveDown();
  }
  
  void stopPlayer2(){
    player2.stop();
  }
  
  void draw(){
    player1.draw();
    player2.draw();
  }
}