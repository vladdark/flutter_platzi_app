class Designer{

  String profileImage;
  String name;
  int experienceYears;
  bool canContact = false;
  String email = "test@gmail.com";

  Designer(this.name, {
    this.canContact=false,
    this.profileImage="profile_no.png",
    this.experienceYears=0,
  });

  String getProfileImagePath(){
    return "assets/images/${this.profileImage}";
  }

}