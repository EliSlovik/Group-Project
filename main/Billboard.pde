//Eli Slovik
enum Location {
  highway,
    walkingStreet
}

class BillBoard extends Upgrade {
  Location location;
  private int rentPrice;
  private int amountOwned;
  
  public BillBoard(int price, Location location, int amountOfTraffic) {
    super(price, TargetAge.youngAdults, null, null, null);
    this.location = location;
  }
}
