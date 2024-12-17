boolean on,opaq;
int co,opval;

void setup() {
  size(400, 400);
  background(123, 10,1);
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
    co = 200;
  } else {
    co = 100;
  }
  
  if (!opaq) {
    opval = 0;
  } else {
    opval = 123;
  }

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
