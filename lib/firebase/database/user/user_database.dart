import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:promote_uganda/firebase/modules/user/causalUser.dart';
import 'package:promote_uganda/firebase/modules/user/user.dart';

//ignore:camel_case_types
class userDataManip {


  static Future<userModel> getUser({required String userId}) async {
    final user =
        await FirebaseFirestore.instance.collection("users").doc(userId).get();


    return casualUserModel(
        userId: userId,
        username: user.get("username") as String,
        gmail: user.get("gmail") as String,
        profilePic: user.get("profilePic"),
        contact: user.get("contact"));
  }

  static Stream<DocumentSnapshot> getUserStream({required String userId}){
    return FirebaseFirestore
    .instance
    .collection("users").doc(userId).snapshots();
  }

  static Future<void> saveUser(userModel user) async {
    var usersStore = FirebaseFirestore.instance.collection("users");

    await usersStore.doc(user.userId).set({
      "username": user.username,
      "gmail": user.gmail,
      "contact": user.contact,
      "profilePic": user.profilePic,
      "category": user.account_type
    });
  }

  static Future<void> updateUser(userModel user) async {
    var usersStore = FirebaseFirestore.instance.collection("users");

    await FirebaseFirestore.instance.runTransaction((transaction) async {
      var userReference = usersStore.doc(user.userId);

      transaction.update(userReference, {
        "username": user.username,
        "contact": user.contact,
        "profilePic": user.profilePic,
        "category": user.account_type
      });
    });
  }

  static void deleteUser(String userId) {}
}
