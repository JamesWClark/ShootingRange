public class Reticle {
  // variables
  private PVector pos;
  private int w = 50, h = 50;
  private Magazine mag;

  // constructors
  public Reticle(int x, int y) {
    pos = new PVector(x, y);
    mag = new Magazine(30);
  }

  // methods
  public void move() {
  }
  public void move(int x, int y) {
    pos.x = x;
    pos.y = y;
  }
  public void display() {
    // https://processing.org/reference
    noFill();
    stroke(0);
    strokeWeight(2);
    int hy = 11;
    line(pos.x, pos.y - h/2 - hy, pos.x, pos.y + h/2 + hy);
    line(pos.x - w/2 - hy, pos.y, pos.x + w/2 + hy, pos.y);
    ellipse(pos.x, pos.y, w, h);
    
    mag.display();
  }
  public void fire(ArrayList<Duck> ducks) {
    // compare the target against the ducks...
    // if overlapping, destroy the duck

    if (mag.remove()) {
      for (int i = 0; i < ducks.size(); i++) {
        Duck duck = ducks.get(i);
        float distance = dist(pos.x, pos.y, duck.pos.x, duck.pos.y);
        int radius = duck.w / 2;
        if (distance < radius) {
          score++;
          ducks.remove(duck);
        }
      }
    }
  }
}
