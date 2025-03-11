// Primary: ELi Slovik Big helper: Jialai Ying His little Helpers: Cormac Stone, Peter Klehr
// UI fixing and class updating Peter Klehr, Spreading functionality: Peter & Eli
import java.util.*;
enum ScreenState {
  START,
    TREND,
    NY,
    UT,
    INST
}
ScreenState currentState = ScreenState.START;
PImage ut, ny, bg, bg2, logo;
int delay = 0;
int x, x2;
int money;
int spreadRate;
HashSet<PVector> points = new HashSet<PVector>();
ArrayList<PVector> pointsToAdd = new ArrayList<PVector>();
void setup() {
  size(1920, 1080);
  bg = loadImage("bg.jpg");
  bg2 = loadImage("bg.jpg");
  logo = loadImage("Logo.jpg");
  x = 1920;
  x2 = 0;
  spreadRate = 200;
}
boolean mouseDown = false;
void draw() {
  if (mousePressed && !mouseDown) {
    mouseDown = true;
  } else if (!mousePressed) {
    mouseDown = false;
  }
  switch (currentState) {
  case START:
    back();
    x--;
    x2--;
    startscreen();
    break;
  case TREND:
    back();
    x--;
    x2--;
    trendscreen();
    points.clear();
    break;


  case NY:
    background(135, 173, 194);
    NYscreen();
    if (delay >= 100) {
      if (mouseDown && getValue(mouseX, mouseY, 2.5, 'R', "NY Race.png") != 102.0) {
        points.add(new PVector(floor(mouseX/10)*10, floor(mouseY/10)*10));
      }
    }
    for (PVector p : points) {
        if (!containsPoint(points, p.x+10, p.y)) {
          pointsToAdd.add(new PVector(p.x+10, p.y));
        }
        if (!containsPoint(points, p.x, p.y-10)) {
          pointsToAdd.add(new PVector(p.x, p.y-10));
        }
        if (!containsPoint(points, p.x-10, p.y)) {
          pointsToAdd.add(new PVector(p.x-10, p.y));
        }
        if (!containsPoint(points, p.x, p.y+10)) {
          pointsToAdd.add(new PVector(p.x, p.y+10));
        }
        delay(spreadRate);
      }
    points.addAll(pointsToAdd);
    pointsToAdd.clear();
    for (PVector p : points) {
      fill(100);
      rect(p.x, p.y, 10, 10);
    }
    System.out.println(points.size());
    
    break;
  case UT:
    background(135, 173, 194);
    NYscreen();
    break;
  case INST:
    back();
    x--;
    x2--;
    instructionsscreen();
  }
  if (currentState == ScreenState.TREND) {
    delay += 6;
  }
}
boolean containsPoint(HashSet<PVector> list, float x, float y) {
  for (PVector p : list) {
    if (p.x == x && p.y == y) {
      return true;
    }
  }
  return false;
}

void back() {
  imageMode(CORNER);
  image(bg, x, 0);
  image(bg2, x2, 0);
  image(logo, 50, 50);
  if (x2 == -1920) {
    x2 = 1920;
  } else if (x == -1920) {
    x = 1920;
  }
}
void startscreen() {

  Screen startscreen = new Screen(1920, 1080);
  startscreen.addButton(((width - 1900) / 2), (height - 700), 500, 50, "Welcome to the ViralWave!", 200, 34);
  startscreen.addButton(((width - 1900) / 2), (height - 625), 500, 50, "Start", 200, 24);
  startscreen.addButton(((width - 1900) / 2), (height - 550), 500, 50, "Instructions", 200, 24);
  startscreen.addButton(((width - 1900) / 2), (height - 475), 500, 50, "Options", 200, 24);
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
  if (getValue(mouseX, mouseY, 2.5, 'R', "NY Race.png")!= 102.0) {
    text("Percent White: " + getValue(mouseX, mouseY, 2.5, 'R', "NY Race.png"), 1500, 150);
    text("Percent Black: " + getValue(mouseX, mouseY, 6, 'G', "NY Race.png"), 1500, 200);
    text("Percent Hispanic: " + getValue(mouseX, mouseY, 4, 'B', "NY Race.png"), 1500, 250);
  }
  NYscreen.addButton((width - 1900), (height - 120), 150, 50, "Back", 200, 24);
  NYscreen.display();
  if (delay >= 100) {
    if (NYscreen.buttons.get(0).isPressed()) {
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
