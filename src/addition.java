public class addition {
    public int  options[] = new int[4];
    public int correctoption;
    public String text;
    {
        // generate two numbwers and create text of questions
        int numb1 = (int)(Math.random() * 50 + 0);
        int numb2 = (int)(Math.random() * 50 + 0);
        // make a variable for the correct answer
        int answer = numb1 + numb2;
        correctoption = (int)(Math.random() * 4 + 0);
        // for loop to input all of the options
        for(int i = 0; i<options.length; i++){
             if (i != correctoption){
                 //make a random number to assign to one of the options
                 int assignednumber = (int)(Math.random() * 20 + answer-10);
                 //check to make sure the random number is not already in the array and is not the answer
                 if (numberinarray(assignednumber,options) == false && assignednumber != answer) {
                    options[i] = assignednumber;
                 }else {
                     i -= 1;
                 }
             }else{
                 options[i] = answer;
             }
             
        }
        text = "what is " + numb1 + " + " + numb2 + "?";
    }
    
    public void printoptions(){
        for (int i = 0; i < this.options.length; i++) {
            System.out.println((i + 1) + ") " + options[i]);
        }
    }

    public static boolean numberinarray(int targetnumber, int array[]) {
        for (int i = 0; i<array.length; i++) {
            if (array[i] == targetnumber) {
                return true;
            }
        }
        return false;
    }
}
