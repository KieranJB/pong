enum Side{
  LEFT,RIGHT
}

class Player {
  Side side;
;

  int barLength = 140;
  int barWidth = 20;
  
  int x;
  int y = height/2 - barLength/2;
  
  public Player(Side side){
    this.side = side;
    if (side == Side.LEFT) {
      x = 30;
      
    } else {
      x = width - 30;
    }
    
  }
  void tick(){
    println("Player " + this.side + " tick");
  }
  void draw(){
  if (this.side == Side.LEFT) {
    color c = color(200,123,0);
    fill(c);
    noStroke();
    rect(x - barWidth, y , barWidth , barLength);
   
  } else {
    rect(x,y,barWidth,barLength);
  }
  }
  
  
  
}