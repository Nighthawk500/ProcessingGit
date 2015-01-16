float xRotation = 0;
float yRotation = 0;

void setup() {
  size(640, 480, P3D);
}
void draw() {
  background(220);
  translate(mouseX, mouseY);
  fill(0, 200, 0);
  lights();
  //rotateX(-mouseY*.01);
  //rotateY(-mouseX*.01);
  stroke(0, 255, 0);
  float radius = height *.2 * (1+sin(frameCount*.01));

  // Rotation with keys

  if (keyPressed) { 

    if (key =='w') {
      xRotation += .01;
    }
    if (key =='s') {
      xRotation -= .01;
    }
    if (key =='a') {
      yRotation -= .01;
    }
    if (key =='d') {
      yRotation += .01;
    }
  }


  rotateX(xRotation);
  rotateY(yRotation);
  sphere(radius);
}

