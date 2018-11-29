public class Duck {
  private PVector pos;
  private PVector vel;
  private int w = 40, h = 40;
  
  public Duck(int x, int y) {
    pos = new PVector(x, y);
    vel = new PVector(5, 0);
  }
  
  void move() {
    pos.add(vel);
    if(pos.x > width) {
      pos.x = 0;
    }
  }
  
  void display() {
    fill(255, 255, 0); // rgb yellow
    noStroke(); // turn of the border
    ellipse(pos.x, pos.y, w, h);
  }
}
