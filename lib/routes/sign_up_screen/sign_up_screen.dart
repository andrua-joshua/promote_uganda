import 'package:flutter/material.dart';
import 'package:promote_uganda/routes/sign_up_screen/widgets/sign_up_screen_widgets.dart';



class signUpScreen extends StatelessWidget{
  const signUpScreen({super.key});


  @override
  Widget build(BuildContext context){
    return const Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            SizedBox(height: 100,),

            signUpForm()
          ],
        ),
      ),
    );
  }
}