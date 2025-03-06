//// Primary: ELi Slovik Big helper: Jialai Ying His little Helpers: Cormac Stone, Peter Klehr
//// UI fixing and class updating Peter Klehr
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
  startscreen.addButton(((width - 1900) / 2), (height - 800), 500, 50, "Welcome to the ViralWave!", 200, 34);
  startscreen.addButton(((width - 1900) / 2), (height - 725), 500, 50, "Start", 200, 24);
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
  trendscreen.addButton((width - 1900), (height - 120), 300, 50, "Back", 200, 24);
  trendscreen.display();
  if (delay >= 100) {
    if (trendscreen.buttons.get(2).isPressed()) {
    currentState = ScreenState.START;
  }
    if (trendscreen.buttons.get(1).isPressed()) {
      currentState = ScreenState.UT;
    }
    if (trendscreen.buttons.get(0).isPressed()) {
      currentState = ScreenState.NY;
    }
  }
}
void NYscreen() {
  Screen NYscreen = new Screen(1920, 1080);
  ny = loadImage("NY.png");
  imageMode(CORNER);
  image(ny, 0, 0);
  text("Percent White: " + getValue(mouseX,mouseY,2.5,'R',"NY Race.png"),1500,150);
  text("Percent Black: " + getValue(mouseX,mouseY,6,'R',"NY Race.png"),1500,200);
  text("Percent Hispanic: " + getValue(mouseX,mouseY,4,'R',"NY Race.png"),1500,250);
  NYscreen.addButton((width - 1900), (height - 120), 150, 50, "Back", 200, 24);
  NYscreen.display();
  if (delay >= 100) {
    if (NYscreen.buttons.get(0).isPressed()) {
      currentState = ScreenState.TREND;
    }
  }
}
void UTscreen() {
  Screen UTscreen = new Screen(1920, 1080);
  ut = loadImage("UP.png");
  imageMode(CENTER);
  ut.resize(900, 900);
  image(ut, 700, 650);
  fill(green(get(mouseX, mouseY)));
  println(green(get(mouseX, mouseY)) / 10);
  UTscreen.addButton((width - 1900), (height - 120), 150, 50, "Back", 200, 24);
  UTscreen.display();
  if (delay >= 100) {
    if (UTscreen.buttons.get(0).isPressed()) {
      currentState = ScreenState.TREND;
    }
  }
}
void instructionsscreen() {
  Screen instructionsscreen = new Screen(1920, 1080);
  instructionsscreen.addButton(((width - 900) / 2), (height / 2 - 30), 900, 50, "This is the instructions screen", 200, 24);
  instructionsscreen.addButton(((width - 900) / 2), (height / 2 + 30), 900, 50, "We will have screenshots of gameplay when it becomes functional", 200, 24);
  instructionsscreen.addButton((width - 1900), (height - 120), 300, 50, "Back", 200, 24);
  if (instructionsscreen.buttons.get(2).isPressed()) {
    currentState = ScreenState.START;
  }
  instructionsscreen.display();
}
