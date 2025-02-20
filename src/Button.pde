public class Button {

  int x;
  int y;
  int wid;
  int hei;
  String text;
  int col;
  public Button(int x, int y, int wid, int hei, String text, int col) {
    this.x = x;
    this.y = y;
    this.wid = wid;
    this.hei = hei;
    this.text = text;
    this.col = col;
  }
  void display() {
    rect(x, y, wid, hei);
    fill(col);
    textAlign(CENTER, CENTER);
    textSize(16);
    text(text, x + wid / 2, y + hei / 2);
    fill(12);
  }
  boolean isPressed() {
    if (mouseX >= x && mouseX <= x + wid && mouseY >= y && mouseY <= y + hei) {
      col = 150;
      if (mousePressed) {
        return true;
      }
    }
    return false;
  }
}
