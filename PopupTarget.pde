public class PopupTarget {
  
  private PVector pos;
  private int w = 80, h = 0, maxH = -100;
  int speed = 0;
  
  private long mark = 0; // marks the beginning of time 
  private long timeBetween = 6000; // ms between next up and down
  private long timeUp = 4000; // ms while up before going back down

  private boolean up = false; // start down
  
  public PopupTarget(int x, int y) {
    pos = new PVector(x, y);
  }
  
  public void move() {
    
    
    
    if(millis() - mark > timeBetween) {
      up = true;
      mark = millis();
    }
    
    if(up) {
      if(millis() - mark < timeUp) {
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
    fill(#5A3838);
    rect(pos.x, pos.y, w, h);
  }
}