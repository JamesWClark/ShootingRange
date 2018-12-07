public class Bullet implements Sprite {
  
  private PVector pos;
  private color c = color(0); // black
  private int w = 20, h = 20;
  
  public Bullet(int x, int y) {
    pos = new PVector(x, y);
  }
  
  public void display() {
    fill(c);
    ellipse(pos.x, pos.y, w, h);
  }
  
  public void move() {
    w--;
    if(w == 1) {
      //bullets.remove(this);
    }
  }
  
  public PVector getPos() {
    return pos;
  }
}
