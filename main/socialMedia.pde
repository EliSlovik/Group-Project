//Eli Slovik
class SocialMedia extends Upgrade {
  private int likeToDislikeRatio;
  private int shareRatio;
  TargetAge targetAge;
  TargetAge secondTargetAge;
  Platform platform;

  public SocialMedia(Platform platform, int price) {
    super(price, null, null, null, null);
    this.platform = platform;
    setTargetAge(getTargetAgeForPlatform(platform));
  }

  private  TargetAge getTargetAgeForPlatform(Platform platform) {//i might also add a secondTargetAge variable for like facebook that targets young adults and married, and i would add it to upgrade constructor
    switch (platform) {
      case Facebook:
        return TargetAge.married;
      case TikTok:
        return TargetAge.children;
      case Instagram:
        return TargetAge.youngAdults;
      default:
        return null;
    }
  }

  public void makePost() {
  }

  public void makeAd() {
  }

  public void collab() {
  }

  public TargetAge getTargetAge() {
    return targetAge;
  }

  public TargetAge getSecondTargetAge() {
    return secondTargetAge;
  }
}
