public class Fish extends Animal {
    private boolean isFreshwater;

    public Fish(String name, int weight, boolean isFreshwater) {
        super(name, weight);
        this.isFreshwater = isFreshwater;
    }

    @Override
    public void makeSound() {
        System.out.println(getName() + " the fish burps");
    }

    @Override
  public void move() {
    String waterType;
    if (isFreshwater) {
        waterType = "freshwater";
    } else {
        waterType = "saltwater";
    }
    System.out.println(getName() + " swims in " + waterType);
}
    @Override
    public void calcCalories() {
         System.out.println(getName() + " eats " + getWeight() * 10 + " calories per day");   
    }

    public boolean isFreshwater() {
        return isFreshwater;
    }
}
