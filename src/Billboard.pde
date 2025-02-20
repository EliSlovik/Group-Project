// Owen
//waiting for counties to be categorized by an int
public class BillBoard extends Upgrade {
    private int location;
    private int amountOfTraffic;
    private int price;
    private int amountOwned;
    private int amountRented;
    
    public void rent(int numberOfDays, int location, int numberRented) {
    if(money >= (price * numberOfDays) * numberRented ){
        money -= (price * numberOfDays) * numberRented;
        amountRented += numberRented;
      } else {
         System.out.print("you dont have enough money");
      // add a pop up on ui to say they dont have enough money
      }

    }
    public void buy(int numberBought, int location) {
      if(money >= price * numberBought){
        money -= price * numberBought;
        amountOwned += numberBought;
      } else {
         System.out.print("you dont have enough money");
      // add a pop up on ui to say they dont have enough money
      }
    }

    public int getNumberOfViewers() {
        return amountOfTraffic;
    }
    }
