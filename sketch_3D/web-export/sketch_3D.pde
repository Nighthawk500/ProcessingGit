void setup() {
  size(640,480,P3D);
}
void draw() {
  background(220);
  translate(mouseX, mouseY);
  sphere(height/4);
}

