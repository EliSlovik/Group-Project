//Aidan Slovik, Cormac Stone
boolean on, opaq;
int co, opval;

void setup() {
  size(400, 400);
  background(0, 10,255 );
  colorMode(RGB, 255);
}

void draw() {
  color c = get(mouseX, mouseY);
  float redValue = red(c);
  //println(redValue);
  float blueValue = blue(c);
  //println(blueValue);
  float opValue = alpha(c);
  //println(opValue);

  if (blueValue == 0 )
  {
    on = true;
    opaq = true;
  } else {
    on = false;
    opaq = false;
  }

  //if (redValue > 100) {
  //  on = true;
  //} else {
  //  on = false;
  //}

  if (!on) {
    co = 255;
  } else {
    co = 100;
  }

  if (!opaq) {
    opval = 255;
  } else {
    opval = 10;
  }
  if (opval == 10) {
    fill(co, 0, 0, opval);
    beginShape();
    vertex(120, 80);
    vertex(180, 60);
    vertex(260, 100);
    vertex(340, 190);
    vertex(340, 300);
    vertex(120, 300);
    endShape(CLOSE);
  } else {
    fill(co, 0, 0);
    beginShape();
    vertex(120, 80);
    vertex(180, 60);
    vertex(260, 100);
    vertex(340, 190);
    vertex(340, 300);
    vertex(120, 300);
    endShape(CLOSE);
  }
}
