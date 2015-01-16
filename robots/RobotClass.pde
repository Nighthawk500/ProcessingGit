class Robot {
  float wHead = 75;
  float x, y;
  float alphaLevel=100;

  Robot(float headWidth) {
    wHead = headWidth;
    x = width/2;
    y = height/2;
  }

  void easeTowards( float x_, float y_) {
    float easing = .8;
    x = x*(1-easing) + x_ * easing;
    y = y*(1-easing) + y_ * easing;
  }


  void drawRobot() {
    pushMatrix();

    translate(x, y+wHead/2);

    //Head
    fill(200, 200, 200, alphaLevel);
    float hHead = wHead*2/3;
    float rHead = wHead/12;
    rect(0, -hHead, wHead, hHead, rHead);


    //Eyes
    fill(0, 255, 0, alphaLevel);
    float eyeDiam = wHead/10;
    ellipse(-wHead/4, -hHead, eyeDiam, eyeDiam);
    ellipse(wHead/4, -hHead, eyeDiam, eyeDiam);

    //Mouth
    fill(100, 100, 240, alphaLevel);
    float wMouth = wHead*.25;
    float hMouth = hHead*.1;
    rect(0, -hHead/1.5, wHead/4, hHead/8);
    
    //Neck
    float wNeck = wHead*.25;
    float hNeck = hHead*.1;
    rect(0, 0, wHead/4, hNeck*10);
    
    popMatrix();
  }
}

