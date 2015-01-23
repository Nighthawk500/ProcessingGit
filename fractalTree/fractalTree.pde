int MAX_BRANCH_LEVEL = 7;
float angleInDeg = 11;
float trunkHeightMult = .1;
float angleShiftInDeg = 0;

void setup() {
  size(800, 800);
}
void draw() {
  background(255);
  translate(width/2, 5*height/6);
  scale(1, -1);


  if (keyPressed) {
    if (key == 'a') {
      --angleShiftInDeg;
    }
    if (key == 'd') {
      ++angleShiftInDeg;
    }
  } else {
    angleShiftInDeg *= .95;
  }

  drawTree(0);
}

void drawTree(int level) {
  if (level > MAX_BRANCH_LEVEL) {
    return;
  }
  float trunkThickness = width * .04 * pow(.8, level);
  stroke(#a0522d);
  strokeWeight(trunkThickness);
  float trunkHeight = height * trunkHeightMult;
  line(0, 0, 0, trunkHeight);
  translate(0, trunkHeight);
  float angleInRad = angleInDeg * PI / 180;
  float angleShiftInRad = angleShiftInDeg * PI/180;
  pushMatrix();
  rotate(angleInRad+angleShiftInRad);
  drawTree(level + 1);
  popMatrix();  
  pushMatrix();
  rotate(-angleInRad+angleShiftInRad);
  drawTree(level + 1);
  popMatrix();
}

