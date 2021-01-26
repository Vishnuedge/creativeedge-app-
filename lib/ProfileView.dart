class Profile{
  static List<Profile> getProfile() => [
    Profile(
      "YOUR CLASSES",
    ),
    Profile(
      "WISHLIST"
    ),
    Profile(
      "HELP CENTER"
    ),
    Profile("ABOUT US"),
    Profile("TERMS OF USE"),
    Profile("PRIVACY POLICY")
  ];
  String title;
  Profile (this.title);
}