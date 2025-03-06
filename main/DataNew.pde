//Peter Klehr

  PImage mapImage;

  float getValue(int x, int y, float scale, char RGB, String map) {
    mapImage = loadImage(map);
    
    if (RGB == 'R') {
      return scale * red(mapImage.get(x, y));
    } else if (RGB == 'G') {
      return scale * green(mapImage.get(x, y));
    } else {
      return scale * blue(mapImage.get(x, y));
    }
    
  }
