//// Primary: ELi Slovik Big helper: Jialai Ying His little Helpers: Cormac Stone, Peter Klehr
enum ScreenState {
  START,
    TREND,
    NY,
    UT,
    INST
}

ScreenState currentState = ScreenState.START;

PImage ut, ny, bg;
int delay = 0;
int money;

void setup() {
  size(1920, 1080);
  bg = loadImage("StartScreen.jpg");
}

void draw() {
  switch (currentState) {
  case START:
    background(bg);
    startscreen();
    break;
  case TREND:
    background(bg);
    trendscreen();
    break;
  case NY:
    background(135, 173, 194);
    NYscreen();
    break;
  case UT:
    background(135, 173, 194);
    UTscreen();
    break;
  case INST:
  background(bg);
    instructionsscreen();
  }

  if (currentState == ScreenState.TREND) {
    delay += 6;
  }
}

void startscreen() {

  Screen startscreen = new Screen(1920, 1080);
  startscreen.addButton(((width - 1900) / 2), (height - 800), 500, 50, "Welcome to the ViralWave Game!", 200, 24);
  startscreen.addButton(((width - 1900) / 2), (height - 725), 500, 50, "Click to Start!", 200, 24);
  startscreen.addButton(((width - 1900) / 2), (height - 650), 500, 50, "Instructions", 200, 24);
  startscreen.addButton(((width - 1900) / 2), (height - 575), 500, 50, "Options", 200, 24);
  startscreen.display();
  if (startscreen.buttons.get(1).isPressed()) {
    currentState = ScreenState.TREND;
  }
  if (startscreen.buttons.get(2).isPressed()) {
    currentState = ScreenState.INST;
  }
}
void trendscreen() {
  Screen trendscreen = new Screen(1920, 1080);
  trendscreen.addButton(((width - 200) / 2), (height / 2 - 30), 200, 50, "Food Trends", 200, 24);
  trendscreen.addButton(((width - 200) / 2), (height / 2 + 30), 200, 50, "Music Trends", 200, 24);
  trendscreen.addButton((width - 1900), (height - 120), 300, 50, "Back to Main Menu", 200, 24);
  trendscreen.display();
  if (trendscreen.buttons.get(2).isPressed()) {
    currentState = ScreenState.START;
  }
  if (delay >= 100) {
    if (trendscreen.buttons.get(1).isPressed()) {
      currentState = ScreenState.UT;
    }
    if (trendscreen.buttons.get(0).isPressed()) {
      currentState = ScreenState.NY;
    }
  }
}
void NYscreen() {
  ny = loadImage("NY.png");
  imageMode(CENTER);
  ny.resize(900, 700);
  image(ny, 550, 540);
  fill(blue(get(mouseX, mouseY)));
  println(blue(get(mouseX, mouseY)) / 10);
}
void UTscreen() {
  ut = loadImage("UP.png");
  imageMode(CENTER);
  ut.resize(900, 900);
  image(ut, 700, 650);
  fill(green(get(mouseX, mouseY)));
  println(green(get(mouseX, mouseY)) / 10);
}
void instructionsscreen() {
  Screen instructionsscreen = new Screen(1920,1080);
  instructionsscreen.addButton(((width - 900) / 2), (height / 2 - 30), 900, 50, "This is the instructions screen", 200, 24);
  instructionsscreen.addButton(((width - 900) / 2), (height / 2 + 30), 900, 50, "We will have screenshots of gameplay when it becomes functional", 200, 24);
  instructionsscreen.display();
}
