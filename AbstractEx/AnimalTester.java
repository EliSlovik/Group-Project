public class AnimalTester {
    public static void main(String[] args) {
        Animal dog = new Dog("Buster", 50, "Golden Retriever");
        Animal fish = new Fish("Nemo", 1, true);
        Animal bird = new Bird("Blu", 12, 24);

        System.out.println("Dog:");
        dog.makeSound();
        dog.move();
        dog.calcCalories();
        
        System.out.println("\nFish:");
        fish.makeSound();
        fish.move();
        fish.calcCalories();

        System.out.println("\nBird:");
        bird.makeSound();
        bird.move();
        bird.calcCalories();
    }
}
