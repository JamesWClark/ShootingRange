public class Magazine {
  
  // instance variables
  private int numBullets;
  private int capacity;
  
  // constructor
  public Magazine(int numBullets) {
    this.numBullets = numBullets;
    this.capacity = numBullets;
  }
  
  public boolean add() {
    if(numBullets < 30) {    
      numBullets++;
      return true;
    }
    return false;
  }
  
  public boolean remove() {
    if(numBullets > 0) {
      numBullets--;
      return true;
    }
    return false;
  }
  
  public void display() {
    for(int i = 0; i < numBullets; i++) {
      fill(0);
      ellipse(i*10 + 50, 100, 10, 10);
    }
  }
}
