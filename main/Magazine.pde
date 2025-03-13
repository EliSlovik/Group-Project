// Eli Slovik

class Magazine extends Upgrade {

  private int numberOfPages;
  private boolean isFrontPage;
    private int numberOfCopies;
  public Magazine(int price, int pages, boolean frontPage, int copies) {
     super(price, TargetAge.married, null, null, TargetGender.woman);
     numberOfPages = pages;
     isFrontPage = frontPage;
     numberOfCopies = copies;
  }
  public void modify() {
  }
}
