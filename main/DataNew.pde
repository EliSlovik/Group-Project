//Peter Klehr

  PImage mapImage;

  float getValue(int x, int y, float scale, char RGB, String map) {
    mapImage = loadImage(map);
    
    if (RGB == 'R') {
      return red(mapImage.get(x, y)) / scale;
    } else if (RGB == 'G') {
      return green(mapImage.get(x, y)) / scale;
    } else {
      return blue(mapImage.get(x, y)) / scale;
    }
    
  }
