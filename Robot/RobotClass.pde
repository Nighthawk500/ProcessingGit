class Robot {
  float wHead = 75;

  Robot(float headWidth) {
    wHead = headWidth;
  }

  void drawRobot() {

    translate(mouseX, mouseY+wHead/2);

    //Head
    fill(200, 200, 200);
    float hHead = wHead*2/3;
    float rHead = wHead/12;
    rect(0, -hHead, wHead, hHead, rHead);


    //Eyes
    fill(0, 255, 0);
    float eyeDiam = wHead/10;
    ellipse(-wHead/4, -hHead, eyeDiam, eyeDiam);
    ellipse(wHead/4, -hHead, eyeDiam, eyeDiam);

    //Mouth
    fill(100, 100, 240);
    float wMouth = wHead*.25;
    float hMouth = hHead*.1;
    rect(0, -hHead/1.5, wHead/4, hHead/8);
  }
}
