Reticle player;

ArrayList<Duck> ducks = new ArrayList<Duck>();
ArrayList<Bullet> clip = new ArrayList<Bullet>();
int numDucks = 20;
int score = 0;


void setup() {
  // config
  noCursor();
  textSize(32);
  
  size(800, 600);

  player = new Reticle(width / 2, height /2);

  // make some ducks
  for (int i = 0; i < numDucks; i++) {
    ducks.add(new Duck(-i * 100, (int)(random(100, height-100))));
  }
}

void draw() {
  background(255); // white

  for (Duck d : ducks) {
    d.display();
    d.move();
  }

  player.move(mouseX, mouseY);
  player.display();

  fill(0);
  text("Score: " + score, 50, 50);
}

void mousePressed() {
  player.fire(ducks);
}
