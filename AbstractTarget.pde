// interface vs abstract class
// https://stackoverflow.com/a/18778228/1161948

public abstract class AbstractTarget implements Sprite {
  
  // protected means private to classes outside of the `package` 
  // and public to classes inside the `package`
  protected PVector pos;
  protected int w, h;
  
  // constructor (hitbox)
  public AbstractTarget(int x, int y, int w, int h) {
    pos = new PVector(x, y);
    this.w = w;
    this.h = h;
  }
  
  // abstract methods must be implemented by inheriting children
  public abstract boolean hitBy(Reticle r);

  // accessor methods
  public int getH() { return h; }
  public int getW() { return w; }
  public PVector getPos() { return pos; }
}
