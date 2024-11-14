int buttonWidth = 300;
int buttonHeight = 50;
int buttonX;
int buttonY1;
int buttonY2;
boolean gameStarted = false;

void setup() {
  size(500, 500);
  buttonX = (width - buttonWidth) / 2;
  buttonY1 = height / 2 - 30;
  buttonY2 = height / 2 + 30;
  noLoop();
}

void draw() {
  if (gameStarted) {
    background(0); // Black screen when game starts
  } else {
    background(300); // Dark blue screen
    fill(255);
    rect(buttonX, buttonY1, buttonWidth, buttonHeight);
    rect(buttonX, buttonY2, buttonWidth, buttonHeight);

    fill(0);
    textAlign(CENTER, CENTER);
    textSize(16);
    text("Welcome to the ViralWave Game!", buttonX + buttonWidth / 2, buttonY1 + buttonHeight / 2);
    text("Click to Start!", buttonX + buttonWidth / 2, buttonY2 + buttonHeight / 2);
  }
}

void mousePressed() {
  // Check if the mouse is within the "Click to Start!" button
  if (!gameStarted && 
      mouseX >= buttonX && mouseX <= buttonX + buttonWidth && 
      mouseY >= buttonY2 && mouseY <= buttonY2 + buttonHeight) {
    gameStarted = true;
    redraw();
  }
}

