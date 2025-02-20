//Jialai Ying, Cormac Stone, Eli Slovik
boolean play, play2, play3 = false;
PImage ut, ny;
int delay = 0;
void setup() {
  size(1920, 1080);
}
void draw() {
  background(132, 173, 194);
  if (!play) {
    startscreen();
  } else if (play && !play2 && !play3) {
    background(132, 173, 194);
    trendscreen();
  }
  //Cormac Stone
  else if  (play3) {
    ut = loadImage("UP.png");
    imageMode(CENTER);
    ut.resize(900, 900);
    image(ut, 700, 650);
    fill(green(get(mouseX, mouseY)));
    println(green(get(mouseX, mouseY))/10);
  }
  //Cormac Stone
  else if (play2) {
    ny = loadImage("NY.png");
    imageMode(CENTER);
    ny.resize(900, 700);
    image(ny, 550, 540);
    fill(blue(get(mouseX, mouseY)));
    println(blue(get(mouseX, mouseY))/10);
  }
  if (play) {
    delay++;
  }
}
//Jialai Ying nopt really needed but okay
void drawBackgroundImage() {
  imageMode(CORNER); // Draw from top-left

  // Calculate the scaling factor to cover the entire screen
  float imgAspect = (float) ny.width / ny.height;
  float screenAspect = (float) width / height;

  float newWidth, newHeight;

  if (imgAspect > screenAspect) {
    // Image is wider than screen: scale by height
    newHeight = height;
    newWidth = ny.width * (height / (float) ny.height);
  } else {
    // Image is taller than screen: scale by width
    newWidth = width;
    newHeight = ny.height * (width / (float) ny.width);
  }

  float xOffset = (width - newWidth) / 2;
  float yOffset = (height - newHeight) / 2;

  image(ny, xOffset, yOffset, newWidth, newHeight);
}
void startscreen() {
  Button button1 = new Button(((width -300) /2), (height/2 -30), 300, 50, "Welcome to the ViralWave Game!", 200, 24);
  Button button2 = new Button(((width -300) /2), (height/2+30), 300, 50, "Click to Start!", 200, 24);
  button1.display();
  button2.display();
  button1.isPressed();
  if (button2.isPressed()) {
    play = true;
  }
  button2.isPressed();
}
void trendscreen() { //We are planning on making a button class with these parameters and a check that returns true of it is clicked on
  Button button1 = new Button(((width-200)/2), (height/2-30), 200, 50, "Food Trends", 200, 24);
  Button button2 = new Button(((width-200)/2), (height/2+30), 200, 50, "Music Trends", 200, 24);
  button1.display();
  button2.display();
  //background(12);
  if (delay >= 100) {
    if (button2.isPressed()) {
      play3 = true;
    }
    if (button1.isPressed()) {
      play2 = true;
    }
  }
}
