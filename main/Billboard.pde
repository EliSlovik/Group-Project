//Eli Slovik & Owen Madsen
enum Location {
  highway,
    walkingStreet
}

class BillBoard extends Upgrade {
  Location location;
  private int rentPrice;
  private int amountOwned;
  private int amountOfTraffic;
  private int price;
  private int amountRented;
  public BillBoard(int price, Location location, int amountOfTraffic) {
    super(price, TargetAge.youngAdults, null, null, null);
    this.location = location;
  }
  public void rent(int numberOfDays, int location, int numberRented) {
    if (money >= (price * numberOfDays) * numberRented ) {
      money -= (price * numberOfDays) * numberRented;
      amountRented += numberRented;
    } else {
      System.out.print("you dont have enough money");
      // add a pop up on ui to say they dont have enough money
    }
  }
  public void buy(int numberBought, int location) {
    if (money >= price * numberBought) {
      money -= price * numberBought;
      amountOwned += numberBought;
    } else {
      System.out.print("you dont have enough money");
      // add a pop up on ui to say they dont have enough money
    }
  }
}
