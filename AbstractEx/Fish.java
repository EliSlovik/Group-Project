public class Fish extends Animal {
    private boolean isFreshwater;

    public Fish(String name, boolean isFreshwater) {
        super(name);
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

    public boolean isFreshwater() {
        return isFreshwater;
    }
}
