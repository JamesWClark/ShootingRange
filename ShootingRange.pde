int score = 0;
ArrayList<AbstractTarget> targets = new ArrayList<AbstractTarget>();
Reticle player;

PopupMonster m;

void setup() {
  // config
  noCursor();
  textSize(32);
  size(800, 600);

  
  player = new Reticle(width / 2, height /2);

  // make targets
  m = new PopupMonster(width / 2, height / 2);
  targets.add(m);
  
  for (int i = 0; i < 10; i++) {
    targets.add(new PopupTarget(i * 100, (int)(random(100, height-100))));
    targets.add(new Duck(-i * 100, (int)(random(100, height-100))));
  }
}

void draw() {
  background(255); // white

  for (Sprite target : targets) {
    target.display();
    target.move();
  }

  player.move(mouseX, mouseY);
  player.display();

  fill(0);
  text("Score: " + score, 50, 50);
}

void mousePressed() {
  player.fire(targets);
}
