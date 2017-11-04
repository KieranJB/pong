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

void keyPressed() {
  
  if (keyCode == UP) {
   game.moveUpPlayer2();
    
  } else if (keyCode == DOWN){
    game.moveDownPlayer2();
    
  } else if(key == 'w'){
   game.moveUpPlayer1();
    
  } else if (key == 's') {
    game.moveDownPlayer1();
  }
}

 void keyReleased() {
   if(keyCode == UP || keyCode == DOWN) {
    game.stopPlayer2();
     
   } if (key == 'w' || key == 's') {
     game.stopPlayer1();
     
   }
 }