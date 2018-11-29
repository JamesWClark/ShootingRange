Reticle player;

Duck[] ducks = new Duck[4];

void setup() {
  // config
  noCursor();

  size(800, 600);

  player = new Reticle(width / 2, height /2);

  // make some ducks
  for (int i = 0; i < ducks.length; i++) {
    ducks[i] = new Duck(-i * 100, height / 2);
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
}
