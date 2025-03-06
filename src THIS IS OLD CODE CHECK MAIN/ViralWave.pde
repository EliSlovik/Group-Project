//// Primary: ELi Slovik Big helper: Jialai Ying His little Helpers: Cormac Stone, Peter Klehr
enum screenState {
  START,
    TREND,
    NY,
    UT,
    INST,
    UPG
}

screenState currentState = screenState.START;

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
    background(bg);
    UTscreen();
    break;
  case INST:
    background(bg);
    instructionsscreen();
    break;
  case UPG:
    background(bg);
    upgradesscreen();
    break;
  }

  if (currentState == screenState.TREND) {
    delay += 6;
  }
}

void startscreen() {

  screen startscreen = new screen(1920, 1080);
  startscreen.addButton(((width - 1900) / 2), (height - 800), 500, 50, "Welcome to the ViralWave Game!", 200, 24);
  startscreen.addButton(((width - 1900) / 2), (height - 725), 500, 50, "Click to Start!", 200, 24);
  startscreen.addButton(((width - 1900) / 2), (height - 650), 500, 50, "Instructions", 200, 24);
  startscreen.addButton(((width - 1900) / 2), (height - 575), 500, 50, "Options", 200, 24);
  startscreen.display();
  if (startscreen.buttons.get(1).isPressed()) {
    currentState = screenState.TREND;
  }
  if (startscreen.buttons.get(2).isPressed()) {
    currentState = screenState.INST;
  }
}
void trendscreen() {
  screen trendscreen = new screen(1920, 1080);
  trendscreen.addButton(((width - 200) / 2), (height / 2 - 30), 200, 50, "Food Trends", 200, 24);
  trendscreen.addButton(((width - 200) / 2), (height / 2 + 30), 200, 50, "Music Trends", 200, 24);
  trendscreen.addButton((width - 1900), (height - 120), 300, 50, "Back to Main Menu", 200, 24);
  trendscreen.display();
  if (trendscreen.buttons.get(2).isPressed()) {
    currentState = screenState.START;
  }
  if (delay >= 100) {
    if (trendscreen.buttons.get(1).isPressed()) {
      currentState = screenState.UT;
    }
    if (trendscreen.buttons.get(0).isPressed()) {
      currentState = screenState.NY;
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
  screen UTscreen = new screen(1920, 1080);
  UTscreen.addButton(((width - 900) / 2), (height / 2 - 30), 900, 50, "Upgrades", 200, 24);
  UTscreen.addButton((width - 1900), (height - 120), 300, 50, "Back to Main Menu", 200, 24);
  UTscreen.display();
  if (UTscreen.buttons.get(1).isPressed()) {
    currentState = screenState.START;
  }
  if (UTscreen.buttons.get(0).isPressed()) {
    currentState = screenState.UPG;
  }
  ut = loadImage("UP.png");
  imageMode(CENTER);
  ut.resize(900, 900);
  image(ut, 700, 650);
  fill(green(get(mouseX, mouseY)));
  println(green(get(mouseX, mouseY)) / 10);
}
void instructionsscreen() {
  screen instructionsscreen = new screen(1920, 1080);
  instructionsscreen.addButton(((width - 900) / 2), (height / 2 - 30), 900, 50, "This is the instructions screen", 200, 24);
  instructionsscreen.addButton(((width - 900) / 2), (height / 2 + 30), 900, 50, "We will have screenshots of gameplay when it becomes functional", 200, 24);
  instructionsscreen.addButton((width - 1900), (height - 120), 300, 50, "Back to Main Menu", 200, 24);
  instructionsscreen.display();
  if (instructionsscreen.buttons.get(2).isPressed()) {
    currentState = screenState.START;
  }
}
void upgradesscreen() {
  text("this is the upgrades screen", 50, 50);
}
