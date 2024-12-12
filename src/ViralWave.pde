boolean play = false;
void setup() {
  size(500, 500);
}
void draw() {
  if (!play) {
    startscreen();
  }
}


void startscreen() {
  int buttonWidth = 300;
  int buttonHeight = 50;
  int buttonX;
  int buttonY1;
  int buttonY2;
  buttonX = (width - buttonWidth) / 2;
  buttonY1 = height / 2 - 30;
  buttonY2 = height / 2 + 30;
  background(120);
  rect(buttonX, buttonY1, buttonWidth, buttonHeight);
  rect(buttonX, buttonY2, buttonWidth, buttonHeight);
  fill(255);
  textAlign(CENTER, CENTER);
  textSize(16);
  text("Welcome to the ViralWave Game!", buttonX + buttonWidth / 2, buttonY1 + buttonHeight / 2);
  text("Click to Start!", buttonX + buttonWidth / 2, buttonY2 + buttonHeight / 2);
  fill(12);
  if (mousePressed) {
    if (mouseX >= buttonX && mouseX <= buttonX + buttonWidth && mouseY >= buttonY2 && mouseY <= buttonY2 + buttonHeight) {// if statement to check if button was pressed
      background(0);
      play = true;
    }
  }
}
