import java.util.Scanner;
public class MyProgram {

    public static void main(String[] args) {

        mathquiz();
        multiplicationquiz();
    }
    public static void mathquiz() {
        int correctcount = 0;
        float additionpercentcorrect = 0;
        for(int i = 0; i<4; i++){
            Scanner scanner = new Scanner(System.in);
            addition instanceOfquestion = new addition(); 
            System.out.println(instanceOfquestion.text);
            instanceOfquestion.printoptions();
            System.out.println("What is your choice? ");
            int selectedoption = scanner.nextInt();
            if (selectedoption == instanceOfquestion.correctoption+1) {
                System.out.println("Correct!");
                correctcount+= 1;
            }else {
                System.out.println("Wrong, dummy!");
            }
        }
        System.out.println("you got " + correctcount + " correct!");
        additionpercentcorrect = (correctcount/4)*100;
        System.out.println("you got " + additionpercentcorrect + "%");
        if (additionpercentcorrect < 90) {
            System.out.println("you need to study... stupid");
    }
    }
    //Jialai Ying
    public static void multiplicationquiz() {
        float correctcount = 0;
        float multiplicationpercentcorrect = 0;
        for(int i = 0; i<4; i++){
            Scanner scanner = new Scanner(System.in);
            multiplication instanceOfquestion = new multiplication(); 
            System.out.println(instanceOfquestion.text);
            instanceOfquestion.printoptions();
            System.out.println("What is your choice? ");
            int selectedoption = scanner.nextInt();
            if (selectedoption == instanceOfquestion.correctoption+1) {
                System.out.println("Correct!");
                correctcount+= 1;
            }else {
                System.out.println("Wrong, dummy!");
                
                
        
            }
        }
        System.out.println("you got " + correctcount + " correct!");
        multiplicationpercentcorrect = (correctcount/4)*100;
        System.out.println("you got " + multiplicationpercentcorrect + "%");
        if (multiplicationpercentcorrect < 90) {
            System.out.println("you need to study... stupid");
    }
}

    // public static void divisionquiz() {
    //     int correctcount = 0;
    //     float divisionpercentcorrect = 0;
    //     for(int i = 0; i<4; i++){
    //         Scanner scanner = new Scanner(System.in);
    //         division instanceOfquestion = new division(); 
    //         System.out.println(instanceOfquestion.text);
    //         instanceOfquestion.printoptions();
    //         System.out.println("What is your choice? ");
    //         int selectedoption = scanner.nextInt();
    //         if (selectedoption == instanceOfquestion.correctoption+1) {
    //             System.out.println("Correct!");
    //             correctcount+= 1;
    //         }else {
    //             System.out.println("Wrong, dummy!");
    //         }
    //     }
    //     System.out.println("you got " + correctcount + " correct!");
    //     divisionpercentcorrect = (correctcount/4)*100;
    //     System.out.println("you got " + divisionpercentcorrect + "%");
    //     if (divisionpercentcorrect < 90) {
    //         System.out.println("you need to study... stupid");
    // }
    // }
}
