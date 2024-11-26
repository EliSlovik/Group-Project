public abstract class Upgrade {
  int targetAge;
  int cost;

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
