public class addition {
    public int  options[] = new int[4];
    public int correctoption;
    public String text;
    {
        // generate two numbwers and create text of questions
        int numb1 = (int)(Math.random() * 50 + 0);
        int numb2 = (int)(Math.random() * 50 + 0);
        int answer = numb1 + numb2;
        correctoption = (int)(Math.random() * 4 + 0);
        for(int i = 0; i<options.length; i++){
             if (i != correctoption){
                 options[i] = (int)(Math.random() * 100 + 0);
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
    
}
