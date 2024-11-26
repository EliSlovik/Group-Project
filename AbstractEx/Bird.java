public class Bird extends Animal {
    private int wingspan;

    public Bird(String name, int weight, int wingspan) {
        super(name, weight);
        this.wingspan = wingspan;
    }

    @Override
    public void makeSound() {
        System.out.println(getName() + " the bird chirps");
    }

    @Override
    public void move() {
        System.out.println(getName() + " has a wingspan of " + wingspan + " inches");
    }
    @Override
    public void calcCalories() {
         System.out.println("they eat" + getWeight() * 30 + "calories per day");   
    }
    public int getWingspan() {
        return wingspan;
    }
}
