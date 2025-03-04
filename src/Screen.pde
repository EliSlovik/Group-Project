//primary: Eli secondary developers: Peter & Jialai
class Screen {
  // Screen attributes
  int width, height;
  ArrayList<Button> buttons;

  Screen(int width, int height) {
    this.width = width;
    this.height = height;
    this.buttons = new ArrayList<Button>();
  }

  void addButton(int x, int y, int w, int h, String text, int col, int textSize) {
    Button newButton = new Button(x, y, w, h, text, col, textSize);
    buttons.add(newButton);
  }

  void display() {
    //background(200);
    for (Button button : buttons) {
      button.display();
    }
  }
  ArrayList<Button> getButtons() {
     return buttons; 
  }
}
