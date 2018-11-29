public class Reticle {
  // variables
  private PVector pos;
  private int w = 50, h = 50;
  
  // constructors
  public Reticle(int x, int y) {
    pos = new PVector(x, y);
  }
  
  // methods
  public void move() {
    
  }
  public void move(int x, int y) {
    pos.x = x;
    pos.y = y;
  }
  public void display() {
    noFill();
    stroke(0);
    strokeWeight(2);
    int hy = 11;
    line(pos.x, pos.y - h/2 - hy, pos.x, pos.y + h/2 + hy);
    line(pos.x - w/2 - hy, pos.y, pos.x + w/2 + hy, pos.y);
    ellipse(pos.x, pos.y, w, h);
  }
}
