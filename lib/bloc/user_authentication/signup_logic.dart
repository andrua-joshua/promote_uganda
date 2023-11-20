import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:promote_uganda/firebase/authentication/userAuthentication.dart';
import 'package:promote_uganda/firebase/modules/user/causalUser.dart';
import 'package:promote_uganda/routes.dart';

//ignore:camel_case_types
class signUpLogic {
  static String? pswd;

  static String? passwordValidate(String? txt) {
    int length = txt?.length ?? 0;
    if (length < 8) {
      return "password should be atleast 8 characters long";
    }
    pswd = txt;
    return null;
  }

  static String? passwordConfirmValidate(String? txt) {
    int length = txt?.length ?? 0;
    if (length < 8) {
      return "password should be atleast 8 characters long";
    }
    if (pswd != txt) {
      return "password doesn't much!";
    }
    return null;
  }

  static String? usernameValidate(String? txt) {
    if (txt?.isEmpty ?? true) {
      return "enter your username please";
    }

    return null;
  }

  static String? gmailValidate(String? txt) {
    if (txt?.isEmpty ?? true) {
      return "enter your Email please";
    } else {
      String suffix = "@gmail.com";
      int lng = txt?.length ?? 0;
      String sub = txt?.substring((lng > 10) ? (lng - suffix.length) : 0) ?? "";

      if (sub != suffix) {
        return "please enter a valid gmail.";
      }
    }

    return null;
  }

  static void signUp(GlobalKey<FormState> ky, BuildContext context,
      String email, String password, String username, String contact,
      {bool isPhone = false, String phone = ''}) async {
    if (ky.currentState?.validate() ?? false) {
      try {
        final provider = EmailUser(email: email, password: password);
        final user = provider.register(
            user: casualUserModel(
                userId: "",
                username: username,
                gmail: email,
                profilePic: "",
                contact: contact));

        await user.then((value) async {
          if (value.user != null) {
            if (value.user?.emailVerified ?? false) {
              // ignore: use_build_context_synchronously
              Navigator.pushNamed(context, RouteGenerator.homescreen);
            } else {
              await value.user?.sendEmailVerification();
              // ignore: use_build_context_synchronously
              ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                  content: Text(
                "Check your Email to verify account",
                style: TextStyle(color: Colors.purple),
              )));
              // Navigator.pushNamed(
              //     context, RouteGenerator.emailVerificationscreen);
            }
          } else{
            ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
              duration: Duration(seconds: 3),
                  content: Text(
                "create account failed",
                style: TextStyle(color: Colors.red),
              )));
          }
        });
      } on FirebaseAuthException catch (e) {
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
            content: Text(
          "Error: ${e.code}",
          style: const TextStyle(color: Colors.redAccent),
        )));
        if (e.code == 'weak-password') {
          ///task in case of week password
        }
        if (e.code == 'email-alread-in-use') {
          ///task in case of week password
        }
      } catch (e) {
        ///task in case something different is wrong
      }

      //Navigator.pushNamed(context, RouteGenerator.homescreen);
    }
  }
}
