public class mutiplication {
    public int  options[] = new int[4];
    public int correctoption;
    public String text;
    
    {
        // generate two numbwers and create text of questions
        int numb1 = (int)(Math.random() * 50 + 0);
        int numb2 = (int)(Math.random() * 50 + 0);
        text = "what is " + numb1 + " * " + numb2 + "?";
        
        // pick random slot to store correct answer
        correctoption = (int)(Math.random() * 4 - 0);
        
        // assign answers to array
        for(int i = 0; i<options.length; i++){
             if (i != correctoption){
                 options[i] = (int)(Math.random() * 1000 + 0);
             }else{
                 options[i] = numb1 * numb2;
            }
        }
        
    }
    
    public void printoptions(){
        for (int i = 0; i < this.options.length; i++) {
            System.out.println(i + ") " + options[i]);
        }
        
    }
    
}
