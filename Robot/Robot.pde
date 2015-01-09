Robot robbie, bobbie;

void setup() {
  size (680, 680);
  rectMode(CENTER);
  robbie = new Robot(100);
  bobbie = new Robot(50);
}
void draw() {
  background(0, 255, 255);

  bobbie.drawRobot();
  robbie.drawRobot();
}

