//Aidan Slovik
public class County {
  private int id;
  private String name;
  private int population;
  private float popDensity;
  private int child, youngAdult, adult, retired;
  private int white, black, asian, hispanic;
  
  
  public County(int i, String n, int p, float d, int c, int ya, int a, int r, int w, int b, int as, int h) {
     this.id = i;
     this.name = n;
     this.population = p;
     this.popDensity = d;
     this.child = c;
     this.youngAdult = ya;
     this.adult = a;
     this.retired = r;
     this.white = w;
     this.black = b;
     this.asian = as;
     this.hispanic = h;
  }
  public int getPop() {
     return population; 
  }
  
  public String toString() {
    return " " + name
    + "\n county number " + id 
    + "\n population: " + population 
    + "\n population density: " + popDensity
    + "\n people aged 0-19: " + child
    + "\n people aged 20-34: " + youngAdult
    + "\n people aged 35-64: " + adult
    + "\n people aged over 65: " + retired
    + "\n people who are white: " + white
    + "\n people who are black: " + black
    + "\n people who are asian: " + asian
    + "\n people who are hispanic: " + hispanic;
  }
}
