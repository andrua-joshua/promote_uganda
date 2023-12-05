
//ignore:camel_case_types
enum accountType{
  CASUAL,ADMIN
}

//ignore:camel_case_types
abstract class userModel{
  late String userId;
  late String username;
  late String gmail;
  late String contact;
  late String profilePic;
  late accountType account_type;


  void setUsername({required String username});
  void setContact({required String contact});
  void setProfilePic({required String profilePic});
  Map<String, dynamic> getUserAsJson();


}

