import 'package:promote_uganda/firebase/modules/user/user.dart';


//ignore:camel_case_types
class casualUserModel extends userModel {



  casualUserModel(
      {required String userId,
        required String username,
      required String gmail,
      required String profilePic,
      required String contact}) {
    super.username = username;
    super.gmail = gmail;
    super.contact = contact;
    super.profilePic = profilePic;
    super.account_type = accountType.CASUAL;
    super.userId = userId;
  }

  // @override
  // String getUsername() {
  //   return super.username;
  // }

  // @override
  // String getContact() {
  //   return super.contact;
  // }

  // @override
  // String getGmail() {
  //   return super.gmail;
  // }

  // @override
  // String getProfilePic() {
  //   return super.profilePic;
  // }

  @override
  void setContact({required String contact}) {
    super.contact = contact;
  }

  @override
  void setProfilePic({required String profilePic}) {
    super.profilePic = profilePic;
  }

  @override
  void setUsername({required String username}) {
    super.username = username;
  }
  
  // @override
  // accountType getAccountType() {
  //   return super.account_type;
  // }
  
  // @override
  // String getUserId() {
  //   return super.userId;
  // }
}
