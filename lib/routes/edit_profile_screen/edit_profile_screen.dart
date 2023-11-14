import 'package:flutter/material.dart';
import 'package:promote_uganda/routes/edit_profile_screen/widgets/edit_profile_screen_widgets.dart';


//ignore:camel_case_types
class editProfileScreen extends StatelessWidget{
  const editProfileScreen({super.key});


  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: const Text(
          "Edit profile",
          style: TextStyle(
            color: Colors.white,
            fontSize: 22,
            fontWeight: FontWeight.bold
          ),),
      ),

      body: const SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 40,),
              Center(child:topEditWidget(imgUrl: "assets/images/city.jpg")),

              SizedBox(height: 40,),

              simpleEditFormWidget()
            ],
          ),
        )),
    );
  }
}