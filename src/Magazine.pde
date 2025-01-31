// Owen

enum Location {
  bookStore,
    gasStation,
    mail
}

class Magazine extends Trend {
  private int pages;// number of pages the magazine ad is on
  private int numberOfCopies; // number of copies of magazines
  private boolean isFrontPage; // if the ad is on the front page of the magazine
  private int pricePerPage = 50; // Price per page
  private int pricePerCopy = 10; // Price per magazine copy
  private int priceForFrontPage = 200; // Price for front page placement
  private int spreadRate = 1; // placeholder for later variable
  int money = 1000; //placeholder for later variable
  private int basePriceOfMagazineAd = 10;
  private int totalPrice;

  public void modify() {
  };

  public void printMagazines() {
    //hardcoded variables until the abilty to take user input from gui
    pages = 5;
    numberOfCopies = 20;
    isFrontPage = true;
    
    totalPrice = basePriceOfMagazineAd + (pages * pricePerPage) + (numberOfCopies * pricePerCopy);
    if (isFrontPage) {
      totalPrice += (priceForFrontPage * ((numberOfCopies * pricePerCopy) * 0.2));
    }



    if (money >= totalPrice) {
      // prompt that item is bought on gui
      money -= totalPrice;
    } else {
      System.out.print("you dont have enough money");
      // add a pop up on ui to say they dont have enough money
    }
  }
}
