ArrayList<Robot> robots = new ArrayList<Robot>();
int numRobots = 500;

void setup() {
  size (680, 680);
  rectMode(CENTER);
  float size = 100;
  for (int i = 0; i < numRobots; ++i) {
    robots.add(new Robot(size));
    size *=0.993;
  }
}
void draw() {
  background(0, 255, 255);
  Robot previousRobot = robots.get(0);
  previousRobot.easeTowards(mouseX, mouseY);
  for (int i = 1; i < numRobots; ++i) {
    Robot nextRobot = robots.get(i);
    nextRobot.easeTowards(previousRobot.x, previousRobot.y);
    previousRobot = nextRobot;
  }
  for (int robotInd = numRobots - 1; robotInd >= 0; --robotInd) {
    robots.get(robotInd).drawRobot();
  }
}

