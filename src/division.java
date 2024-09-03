//Cormac Stone and Aidan Slovik 
import java.text.DecimalFormat;
public class division {
    public double[] options = new double[4];
    public int correctOptionIndex; // Changed to int for proper indexing
    public String text;
    DecimalFormat df = new DecimalFormat("0.00");

    {
        // Generate two numbers and create text of question
        double numb1 = (int) (Math.random() * 50 + 1);
        double numb2 = (int) (Math.random() * 50 + 1);
        text = "What is " + numb1 + " / " + numb2 + "?";

        // Pick random slot to store the correct answer
        correctOptionIndex = (int) (Math.random() * 4);

        // Assign answers to array
        for (int i = 0; i < options.length; i++) {
            if (i != correctOptionIndex) {
                options[i] = (Math.random() * 50.0);
            } else {
                options[i] = numb1 / numb2;
            }
        }
    }

    public void printOptions() {
        for (int i = 0; i < this.options.length; i++) {
            System.out.println((i + 1) + ") " + df.format(options[i]));
        }
    }
}
