void setup() {
  size(480, 480);
  rectMode(CENTER);
  String add = "+";
  print(add);
}

void draw() {
  rect(240, 40, 440, 40); //Output
  
  rect(40, 100, 40, 40); //Add
  rect(40, 160, 40, 40); //Sub
  rect(40, 220, 40, 40); //Mul
  rect(40, 280, 40, 40); //Div
  
  rect(40, 100, 20, 5); rect(40, 100, 5, 20); //Add Symb
  rect(40, 160, 20, 5); //Sub Symb
  rect(40, 220, 20, 5); rect(40, 210, 5, 5); rect(40, 230, 5, 5); //Div Symb
}

