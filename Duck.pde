public class Duck extends AbstractTarget {
  private PVector vel;
  
  public Duck(int x, int y) {
    super(x, y, 40, 40);
    vel = new PVector(5, 0);
  }
  
  void move() {
    vel.x = random(0,15);
    vel.y = random(-4,4);
    pos.y = constrain(pos.y, 100, height-100);
    pos.add(vel);
    if(pos.x > width) {
      pos.x = 0;
    }
  }
  
  void display() {
    fill(200, 200, 0); // rgb yellow
    noStroke(); // turn of the border
    ellipse(pos.x, pos.y, w, h);
  }
  
  // todo: implement circle hitbox
  boolean hitBy(Reticle r) {
    return false;
  }
}
