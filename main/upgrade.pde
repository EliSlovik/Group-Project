//Eli Slovik & and some Owen
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
enum Platform {
  Facebook,
    TikTok,
    Instagram
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
  TargetEthnicity targetEthnicity;
  TargetGender targetGender;
  int spreadRate;

  // Most general constructor
  public Upgrade(int price, TargetAge age, TargetSalaryRange salaryRange, TargetEthnicity ethnicity, TargetGender gender) {
    this.cost = price;
    this.targetAge = age;
    this.targetSalaryRange = salaryRange;
    this.targetEthnicity = ethnicity;
    this.targetGender = gender;
  }
  public int getCost() {
    return cost;
  }

  public TargetAge getTargetAge() {
    return targetAge;
  }

  public TargetSalaryRange getTargetSalaryRange() {
    return targetSalaryRange;
  }

  public TargetEthnicity getTargetEthnicity() {
    return targetEthnicity;
  }

  public TargetGender getTargetGender() {
    return targetGender;
  }
  public void setTargetAge(TargetAge targetAge) {
    this.targetAge = targetAge;
  }
}
