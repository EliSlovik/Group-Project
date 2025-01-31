//Jialai Ying, Cormac Stone, Eli Slovik
boolean play, play2, play3 = false;
PImage ut,ny;
void setup() {
  size(1000, 1000);
}
void draw() {
  if (!play) {
    startscreen();
  } else if (play && !play2) {
    trendscreen();
  }
  //Cormac Stone
  else if  (play2) {
    ut = loadImage("UP.png");
    imageMode(CENTER);
    ut.resize(900, 900);
    image(ut, 700, 650);
    fill(green(get(mouseX, mouseY)));
    println(green(get(mouseX, mouseY))/10);
  }
  //Cormac Stone
  else if (play3) {
    ny = loadImage("NY.png");
    imageMode(CENTER);
    ny.resize(900,900);
    fill(blue(get(mouseX,mouseY)));
    println(blue(get(mouseX,mouseY))/10);
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
  //if (mousePressed) {
  //  if (mouseX >= buttonX && mouseX <= buttonX + buttonWidth && mouseY >= buttonY2 && mouseY <= buttonY2 + buttonHeight) {// if statement to check if button was pressed
  //    background(0);
  //    play = true;
  //  }
  //}
}
void trendscreen() { //We are planning on making a button class with these parameters and a check that returns true of it is clicked on
  int buttonWidth = 200;
  int buttonHeight = 50;
  int buttonX;
  int buttonY1;
  int buttonY2;
  buttonX = (width - buttonWidth) / 2;
  buttonY1 = height / 2 - 30;
  buttonY2 = height / 2 + 30;

  background(120);
  fill(100, 200, 255);
  rect(buttonX, buttonY1, buttonWidth, buttonHeight);
  fill(255, 150, 150);
  rect(buttonX, buttonY2, buttonWidth, buttonHeight);

  fill(0);
  textAlign(CENTER, CENTER);
  textSize(16);
  text("Food Trends", buttonX + buttonWidth / 2, buttonY1 + buttonHeight / 2);
  text("Music Trends", buttonX + buttonWidth / 2, buttonY2 + buttonHeight / 2);

  //if (mousePressed) {
  //  if (mouseX >= buttonX && mouseX <= buttonX + buttonWidth && mouseY >= buttonY1 && mouseY <= buttonY1 + buttonHeight) {
  //    println("Food Trends Selected");
  //    play2 = true;
  //  } else if (mouseX >= buttonX && mouseX <= buttonX + buttonWidth && mouseY >= buttonY2 && mouseY <= buttonY2 + buttonHeight) {
  //    println("Music Trends Selected");
  //    play2 = true;
  //  }
  //}
}
void mousePressed() {
  int buttonWidth = 300;
  int buttonHeight = 50;
  int buttonX = (width - buttonWidth) / 2;
  int buttonY2 = height / 2 + 30;

  // For startscreen
  if (!play) {
    if (mouseX >= buttonX && mouseX <= buttonX + buttonWidth && mouseY >= buttonY2 && mouseY <= buttonY2 + buttonHeight) {
      play = true;
    }
    return;
  }

  // For trendscreen
  int buttonWidthTrend = 200;
  int buttonHeightTrend = 50;
  int buttonXTrend = (width - buttonWidthTrend) / 2;
  int buttonY1Trend = height / 2 - 30;
  int buttonY2Trend = height / 2 + 30;

  if (play && !play2) {
    if (mouseX >= buttonXTrend && mouseX <= buttonXTrend + buttonWidthTrend && mouseY >= buttonY1Trend && mouseY <= buttonY1Trend + buttonHeightTrend) {
      println("Food Trends Selected");
      play3 = true;
    } else if (mouseX >= buttonXTrend && mouseX <= buttonXTrend + buttonWidthTrend && mouseY >= buttonY2Trend && mouseY <= buttonY2Trend + buttonHeightTrend) {
      println("Music Trends Selected");
      play2 = true;
    }
  }
}
