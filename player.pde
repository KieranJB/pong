enum Side{
  LEFT,RIGHT
}

enum MovementDirection {
  UP,DOWN
}

class Player {
  Side side;

  int barLength = 140;
  int barWidth = 20;
  
  int x;
  int y = height/2 - barLength/2;
  
  boolean isMoving = false;
  MovementDirection direction = MovementDirection.UP;
  
  color colour;
  
  public Player(Side side, color colour){
    this.side = side;
    this.colour = colour;
    if (side == Side.LEFT) {
      x = 30;
      
    } else {
      x = width - 30;
    }
    
  }
  
  void tick(){
    
    if (isMoving) {
      
      if(direction == MovementDirection.UP) {
        y -= 5;
      } else {
        y += 5;
      }
  }
  
}
  
 public void moveUp() {
    this.isMoving = true;
    direction  = MovementDirection.UP;
  }
  
 public void moveDown(){
    this.isMoving = true;
    direction = MovementDirection.DOWN;
  }
  
  public void stop(){
    this.isMoving = false;
  }
  
  void draw(){
    
  if (this.side == Side.LEFT) {
    
    fill(colour);
    noStroke();
    rect(x - barWidth, y , barWidth , barLength);
   
  } else {
    
    fill(colour);
    noStroke();
    rect(x,y,barWidth,barLength);
  } 
}
}