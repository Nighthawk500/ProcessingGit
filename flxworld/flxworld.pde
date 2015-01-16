World world;
EventManager eventManager;

void setup() {
  size(2560, 1440, OPENGL);
  eventManager = new EventManager();
  world = new World();
}

void draw() {
  world.draw();
}

void keyPressed() {
  eventManager.keyPressed();
}

void keyReleased() {
  eventManager.keyReleased();
}
