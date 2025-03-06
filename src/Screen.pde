//primary: Eli secondary developers: Peter & Jialai
class screen {
  // screen attributes
  int width, height;
  ArrayList<Button> buttons;

  screen(int width, int height) {
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
