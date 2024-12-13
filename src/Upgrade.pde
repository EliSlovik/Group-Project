 enum targetGender {
    man,
    woman
  }
  
  enum targetEthnicity {
    caucasian,
    black,
    latino,
    asian
  }
 
 abstract class upgrade {
  int targetAge;
  int cost;
  int targetSalaryRange;
  int spreadRate;
  
  public int getCost() {
    return cost;
  }
  
  public int getTargetArea() {
   return targetAge;
  }

  public int getTargetSalaryRange() {
    return targetSalaryRange;
  }
 }
  
  
  
