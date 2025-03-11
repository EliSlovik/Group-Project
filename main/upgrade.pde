  enum TargetGender {
    man,
    woman
  }

  enum TargetEthnicity {
    caucasian,
    black,
    latino,
    asian
  }
  enum TargetAge {
    children,
    youngAdults,
    married,
    seniors   
  }
public abstract class Upgrade {
  int targetAge;
  int cost;

  int targetSalaryRange;
  int spreadRate;

  public int getCost() {
    return cost;
  }

  public int getTargetAge() {
    return targetAge;
  }

  public int getTargetSalaryRange() {
    return targetSalaryRange;
  }
}
