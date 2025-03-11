public class County {
  private int id;
  private String name;
  private int population;
  private float popDensity;
  
  
  public County(int i, String n, int p, float d) {
     this.id = i;
     this.name = n;
     this.population = p;
     this.popDensity = d;
  }
  public int getPop() {
     return population; 
  }
  
  public String toString() {
    return name + " is county number " + id + " and has " + population + 
    " people and a density of " + popDensity + " people per square mile."; 
  }
}
