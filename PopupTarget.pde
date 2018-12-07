public class PopupTarget extends AbstractTarget {

  protected int w = 60; // constant, unchanging
  protected int h = 0;
  protected int maxH = -100;

  // instance variables
  private PVector pos;  
  private int speed = 0;
  private boolean up = false; // the target starts hidden

  // intance time variables
  private long mark = 0;
  private long timeBetween = (long)random(2000, 8000); // ms between popup
  private long timeUp = 1000; // ms while up

  // constructors
  public PopupTarget(int x, int y) {
    super(x, y, 60, 0);
    pos = new PVector(x, y);
  }

  // methods
  public void move() {
    // it's time to pop up
    if (millis() - mark > timeBetween) {
      up = true;
      mark = millis();
      timeBetween = (long)random(2000, 8000);
    }

    if (up) {
      if (millis() - mark < timeUp) {
        speed = 10;
      } else {
        up = false;
        mark = millis();
        speed = -10;
      }
    }

    h -= speed;
    h = constrain(h, maxH, 0);
  }

  public void display() { 
    noStroke();
    fill(255, 0, 0);
    rect(pos.x, pos.y, w, h);
  }

  public boolean hitBy(Reticle r) {
    float rx = r.getPos().x;
    float ry = r.getPos().y;
    if (rx > this.pos.x 
      && ry < this.pos.y
      && rx < this.pos.x + this.w
      && ry >this.pos.y + this.h) {
      return true;
    }
    return false;
  }
}
