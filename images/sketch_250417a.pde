int bounding = 300;
PVector mousePoint;
PVector orbitPoint;
float orbitRadius = 200;
float orbitSpeed = 0.02;
float orbitAngle = 0;
float wanderAmount = 20;

int lastUpdate = 0;
int throttleDelay = 30;

void setup() {
  pixelDensity(displayDensity());
  size(200, 200);
  noCursor();
  frameRate(144);
  noSmooth(); // Disable smooth movement

  orbitPoint = new PVector(width / 2, height / 2);
  mousePoint = new PVector(mouseX, mouseY);
}

void draw() {
  mousePoint.set(mouseX, mouseY);

  // Orbit motion around the mouse (pure orbiting)
  orbitAngle += orbitSpeed;
  if (orbitAngle > TWO_PI) orbitAngle -= TWO_PI;

  // Calculate orbit point relative to the mouse position
  PVector orbitOffset = new PVector(
    cos(orbitAngle) * orbitRadius,
    sin(orbitAngle) * orbitRadius
  );
  
  orbitPoint.set(mousePoint.x + orbitOffset.x, mousePoint.y + orbitOffset.y);

  // Random wander + attraction to mouse
  PVector wander = PVector.random2D().mult(wanderAmount);
  PVector towardMouse = PVector.sub(mousePoint, orbitPoint).mult(0.01);
  orbitPoint.add(wander.mult(0.005));  // Small wandering
  orbitPoint.add(towardMouse);  // Slight attraction to mouse

  // Throttle the window movement/resizing
  if (millis() - lastUpdate >= throttleDelay) {
    lastUpdate = millis();

    // Calculate window size and position based on mouse and orbit point
    float dx = orbitPoint.x - mousePoint.x;
    float dy = orbitPoint.y - mousePoint.y;

    float winX = mousePoint.x - bounding;
    float winY = mousePoint.y - bounding;

    // Window size calculation based on the distance between the mouse and orbit point
    float winW = abs(dx) + bounding * 2;
    float winH = abs(dy) + bounding * 2;

    // Prevent invalid window sizes (minimum size)
    winW = max(50, winW);
    winH = max(50, winH);

    // Clamp window position within screen bounds (no window going off-screen)
    winX = constrain(winX, 0, displayWidth - winW);
    winY = constrain(winY, 0, displayHeight - winH);

    // Only move window if mouse is within the window
    if (mouseX >= winX && mouseX <= winX + winW && mouseY >= winY && mouseY <= winY + winH) {
      // Instant window movement and resizing (no smoothing)
      windowMove(int(winX), int(winY));
      windowResize(int(winW), int(winH));
    }
  }

  // Trippy pixel fill
  loadPixels();
  int w = width;
  int h = height;
  int t = frameCount;

  for (int y = 0; y < h; y++) {
    for (int x = 0; x < w; x++) {
      int index = x + y * w;
      if (index < pixels.length) {
        int offset = (x + y) % 3;
        int state = (t + offset) % 3;

        if (state == 0) pixels[index] = color(0, 255, 255);
        else if (state == 1) pixels[index] = color(255, 0, 255);
        else pixels[index] = color(255, 255, 0);
      }
    }
  }

  updatePixels();
  windowTitle(str(int(random(100000000))));
}

void keyPressed() {
  if (key == ESC) {
    key = 0;
    println("ESC pressed - exit blocked!");
  }
}
