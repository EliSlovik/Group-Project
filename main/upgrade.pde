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
enum TargetSalaryRange {
   lowerclass,
   middleclass,
   upperclass
}
public abstract class Upgrade {
  int cost;
  TargetAge targetAge;
  TargetSalaryRange targetSalaryRange;
  public Upgrade(TargetAge age, int price) {
    targetAge = age;
    cost = price;
  }
  int spreadRate;

  public int getCost() {
    return cost;
  }

  public TargetAge getTargetAge() {
    return targetAge;
  }

  public TargetSalaryRange getTargetSalaryRange() {
    return targetSalaryRange;
  }
}
