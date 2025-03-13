// Eli Slovik

class Magazine extends Upgrade {

  private int numberOfPages;
  private boolean isFrontPage;
  public Magazine(int price, int pages, boolean frontPage) {
     super(price, TargetAge.married, null, null, TargetGender.woman);
     numberOfPages = pages;
     isFrontPage = frontPage;
  }
  public void modify() {
  }
}
