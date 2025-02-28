//Jialai Ying, Cormac Stone, Eli Slovik, Peter Klehr
boolean displayTrendscreen, displayNYscreen, displayUTscreen = false;
PImage ut, ny, bg;
int delay = 0;
int money;
void setup() {
  size(1920, 1080);
  bg = loadImage("StartScreen.jpg");
}
void draw() {
  if (!displayTrendscreen) {
    startscreen();
  } else if (displayTrendscreen && !displayNYscreen && !displayUTscreen) {
    background(132, 173, 194);
    trendscreen();
  }
  //Cormac Stone
  else if  (displayUTscreen) {
    ut = loadImage("UP.png");
    imageMode(CENTER);
    ut.resize(900, 900);
    image(ut, 700, 650);
    fill(green(get(mouseX, mouseY)));
    println(green(get(mouseX, mouseY))/10);
  }
  //Cormac Stone
  else if (displayNYscreen) {
    ny = loadImage("NY.png");
    imageMode(CENTER);
    ny.resize(900, 700);
    image(ny, 550, 540);
    fill(blue(get(mouseX, mouseY)));
    println(blue(get(mouseX, mouseY))/10);
  }
  if (displayTrendscreen) {
    delay += 6;
  }
}
void startscreen() {
  background(bg);
  //Button welcomeButton = new Button(((width -1900) /2), (height-800), 500, 50, "Welcome to the ViralWave Game!", 200, 24);
  //Button startButton = new Button(((width -1900) /2), (height-725), 500, 50, "Click to Start!", 200, 24);
  //Button tutorialButton = new Button(((width -1900) /2), (height-650), 500, 50, "Tutorial", 200, 24);
  //Button optionsButton = new Button(((width -1900 ) /2), (height-575), 500, 50, "Options", 200, 24);
  Screen startscreen = new Screen(1920,1080);
  startscreen.addButton(((width -1900) /2), (height-800), 500, 50, "Welcome to the ViralWave Game!", 200, 24);
  startscreen.addButton(((width -1900) /2), (height-725), 500, 50, "Click to Start!", 200, 24);
  startscreen.addButton(((width -1900) /2), (height-650), 500, 50, "Tutorial", 200, 24);
  startscreen.addButton(((width -1900 ) /2), (height-575), 500, 50, "Options", 200, 24);
  startscreen.display();
    ArrayList<Button> tempButtons = startscreen.getButtons();
  if (tempButtons.get(2).isPressed()) {
    displayTrendscreen = true;
  }
  tempButtons.get(2).isPressed();
}
void trendscreen() { //We are planning on making a button class with these parameters and a check that returns true of it is clicked on
  Button foodButton = new Button(((width-200)/2), (height/2-30), 200, 50, "Food Trends", 200, 24);
  Button musicButton = new Button(((width-200)/2), (height/2+30), 200, 50, "Music Trends", 200, 24);
  Button backButton = new Button((width-1900), (height-120), 300, 50, "Back to Main Menu", 200, 24);
  backButton.display();
  foodButton.display();
  musicButton.display();
  if (backButton.isPressed()) {
    displayTrendscreen = false;
  }
  if (delay >= 100) {
    if (musicButton.isPressed()) {
      displayUTscreen = true;
    }
    if (foodButton.isPressed()) {
      displayNYscreen = true;
    }
  }
}
