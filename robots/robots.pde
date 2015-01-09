Robot robbie, bobbie, rob, bob;

void setup() {
  size (680, 680);
  rectMode(CENTER);
  robbie = new Robot(100);
  bobbie = new Robot(50);
  rob = new Robot(25);
  bob = new Robot(12.5);
}
void draw() {
  background(0, 255, 255);

  robbie.easeTowards(mouseX, mouseY);
  bobbie.easeTowards(robbie.x, robbie.y);
  rob.easeTowards(bobbie.x, bobbie.y);
  bob.easeTowards(rob.x, rob.y);
  rob.drawRobot();
  bob.drawRobot();
  bobbie.drawRobot();
  robbie.drawRobot();
}

