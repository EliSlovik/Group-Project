public class Dog extends Animal {
    private String breed;

    public Dog(String name, String breed) {
        super(name);
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

    public String getBreed() {
        return breed;
    }
}
