public class Dog extends Animal {
    private String breed;

    public Dog(String name, int weight, String breed) {
        super(name, weight);
        this.breed = breed;
    }

    @Override
    public void makeSound() {
        System.out.println(getName() + " the " + breed + " barks");
    }

    @Override
    public void move() {
        System.out.println(getName() + " the " + breed + " runs...");
    }
    @Override
    public void calcCalories() {
         System.out.println(getName() + " eats " + getWeight() * 20 + " calories per day");   
    }

    public String getBreed() {
        return breed;
    }
}
