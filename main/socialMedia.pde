private enum Platform {
  Facebook,
    TikTok,
    Instagram
}
abstract class SocialMedia extends Upgrade {
  private int likeToDislikeRatio;
  private int shareRatio;
  TargetAge targetAge;
  TargetAge secondTargetAge;
  Platform platform;

  public SocialMedia(Platform platform, TargetAge age, int price) {
    super(age, price);
    this.platform = platform;
    setPlatformActions();
  }
  public void setPlatformActions() {
    switch(platform) {
    case Facebook:
      targetAge = TargetAge.married;
      targetAge = TargetAge.youngAdults;
      break;
    case TikTok:
      targetAge = TargetAge.children;
      secondTargetAge = TargetAge.children;
      break;
    case Instagram:
      targetAge = TargetAge.youngAdults;
      secondTargetAge = TargetAge.youngAdults;
      break;
    }
  }
  public  void makePost() {
  }
  public  void makeAd() {
  }
  public  void collab() {
  }
}
