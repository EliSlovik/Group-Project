PImage img;  // Declare variable "a" of type PImage

void setup() {
  size(1000, 1000);
  // The image file must be in the data folder of the current sketch 
  // to load successfully
  img = loadImage("UP.png");  // Load the image into the program  
  // Displays the image at its actual size at point (0,0)
  image(img, 0, 0);
  // Displays the image at point (0, height/2) at half of its size
}

void draw() {
  fill(green(get(mouseX,mouseY)));
  println(green(get(mouseX,mouseY))/10);
  fill(red(get(mouseX,mouseY)));
  println(red(get(mouseX,mouseY))/10);
  fill(blue(get(mouseX,mouseY)));
  println(blue(get(mouseX,mouseY))/10);
}
