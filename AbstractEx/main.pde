// Main class where the program is executed
void setup() {
  // Creating instances of the different types of Art
  Art architecture = new Architecture();
  Art painting = new Painting();
  Art song = new Song();
  
  // Calling the display method on each of the objects
  architecture.display();
  painting.display();
  song.display();
}
