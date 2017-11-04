Game game;
void setup(){
  size(800,500);
  noStroke();
  game = new Game();
}

void draw(){
 background(243,252,0); 
 game.tick();
 game.draw();
}