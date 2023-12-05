import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:promote_uganda/firebase/database/user/user_database.dart';
import 'package:promote_uganda/firebase/modules/user/user.dart';

//ignore:camel_case_types
abstract class userRepository<T> {
  Future<T> register({required userModel user});
  Future<T> signIn();
  Future<void> signout();
}

class EmailUser implements userRepository<UserCredential> {
  final String email;
  final String password;

  const EmailUser(
      {
      ///that is the thing

      required this.email,
      required this.password});

  @override
  Future<UserCredential> register({required userModel user}) async {
    final auth = await FirebaseAuth.instance
        .createUserWithEmailAndPassword(email: email, password: password);
    user.userId = auth.user?.uid ?? "";
    debugPrint(":::::::::::::> registering userId: " + user.userId);
    await userDataManip.saveUser(user);
    debugPrint("::::::> User created succesfully");
    return auth;
  }

  @override
  Future<UserCredential> signIn() async {
    final auth = await FirebaseAuth.instance
        .signInWithEmailAndPassword(email: email, password: password);

    return auth;
  }

  @override
  Future<void> signout() async {
    await FirebaseAuth.instance.signOut();
  }
}
