private enum Platform {
  Facebook,
    TikTok,
    Instagram
}
abstract class socialMedia extends Upgrade {
  private int likeToDislikeRatio;
  private int shareRatio;
  TargetAge targetAge = TargetAge.children;
  Platform platform = Platform.Facebook;

  switch (platform) {
  case Facebook:
    Facebook = 3;
    break;
  }
  public void makePost() {
  }

  public void makeAd() {
  }

  public void collab() {
  }
}
