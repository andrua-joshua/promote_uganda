import 'package:flutter/material.dart';
import 'package:promote_uganda/routes.dart';
import 'package:promote_uganda/routes/profile_screen/widgets/profile_screen_widgets.dart';

//ignore:camel_case_types
class profileScreen extends StatelessWidget {
  const profileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        leading: IconButton(
            onPressed: () => Navigator.pop(context),
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.white,
            )),
        title: const Text(
          "Profile",
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18),
        ),
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: ()=> Navigator.pushNamed(context, RouteGenerator.editprofilescreen) ,
              icon: const Icon(
                Icons.edit_note,
                color: Colors.white,
              ))
        ],
      ),
      body: const SafeArea(
          child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(),
          child: Column(
            children: [
              SizedBox(height: 20,),
              Center(child:topWithImageWidget(
                profileImageUrl: "assets/images/city.jpg", 
                username: "John Doe", 
                gmail: "drillox@gmail.com")),

                SizedBox(height: 20,),

                simpleNavWidget(),

                SizedBox(height: 10,),
                Divider(thickness: 1,color: Colors.grey, endIndent: 20, indent: 10,),
                SizedBox(height: 10,),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child:setablesWidget()),
                SizedBox(height: 30,),
                logoutBtnWidget()
            ],
          ),
        ),
      )),
    );
  }
}
