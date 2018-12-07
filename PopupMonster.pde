public class PopupMonster extends PopupTarget {

  private PImage img;

  public PopupMonster(int x, int y) {
    super(x, y);
    int r = (int)random(0, 1);

    // switches sort of work like if else (not an AP topic)
    switch(r) {
    case 0: 
      img = loadImage("monster1.png");
      break;
    case 1:
      img = loadImage("monster2.png");
      break;
    }
    w = img.pixelWidth;
    maxH = -img.pixelHeight;
  }

  @Override
  public void display() { 
    noStroke();
    fill(255, 0, 0);
    image(img, super.pos.x, super.pos.y, w, h);
  }
}
