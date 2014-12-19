void setup() {
  size(640, 480);
  rectMode(CENTER);    
  noStroke();
  fill(255, 255, 0);
}

void draw() {  
  if (mousePressed) {  
    translate(mouseX, mouseY);
    background(0, 255, 255);
    rect(0, 0, 100, 100);
    fill(150, 180, 200);
    float headHeight = 40;
    float headWidth = 60;
    ellipse(0, -headHeight/2, headWidth, headHeight);
    fill(255);
    float eyeDiam = 10;
    ellipse(-headWidth/4, -headHeight/2, eyeDiam, eyeDiam);
    ellipse(headWidth/4, -headHeight/2, eyeDiam, eyeDiam);
  }
}

