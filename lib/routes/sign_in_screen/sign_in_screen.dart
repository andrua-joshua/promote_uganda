import 'package:flutter/material.dart';
import 'package:promote_uganda/routes/sign_in_screen/widgets/sign_in_screen_widgets.dart';


//ignore:camel_case_types
class signInScreen extends StatelessWidget{

  const signInScreen({super.key});

  @override
  Widget build(BuildContext context){
    return const Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal:10),
            child:Column(
              crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 150,), 
              loginTopWidget(),
              SizedBox(height: 30,),
              loginFormWidget()
            ],
          )),
        ),
      ),
    );
  }

}