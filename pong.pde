Game game;
void setup(){
  size(800,500);
  noStroke();
  game = new Game();
}

void draw(){
 background(100); 
 game.tick();
 game.draw();
}