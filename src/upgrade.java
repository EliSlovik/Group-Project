public class upgrade{
  int targetAge; 
  int cost;
  enum targetGender {
    man,
    woman
  }
  enum {
    caucasian, 
    black, latino
    , asian
  }
  int targetSalaryRange;
  int spreadRate;
  public int getCost(){
    return cost;
  }
  public int getTargetAge(){
    return targetAge;
  }
  public int getTargetSalaryRange(){
    return targetSalaryRange;
}
