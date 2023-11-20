import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:promote_uganda/routes.dart';



//ignore:camel_case_types
class topWithImageWidget extends StatelessWidget {
  final String profileImageUrl;
  final String username;
  final String gmail;
  const topWithImageWidget(
      {super.key,
      required this.profileImageUrl,
      required this.username,
      required this.gmail});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const SizedBox(
          height: 20,
        ),
        CircleAvatar(
          radius: 60,
          backgroundImage: AssetImage(profileImageUrl),
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          username,
          style: const TextStyle(
              color: Colors.black, fontWeight: FontWeight.bold, fontSize: 17),
        ),

        Text(
          gmail,
          style: const TextStyle(
              color: Colors.black, fontWeight: FontWeight.bold, fontSize: 15),
        )
      ],
    );
  }
}


//ignore:camel_case_types
class logoutBtnWidget extends StatelessWidget{
  const logoutBtnWidget({super.key});

  @override
  Widget build(BuildContext context){
    return TextButton(
      onPressed: (){
        FirebaseAuth.instance.signOut();
        Navigator.pushNamed(context, RouteGenerator.signinscreen);
      }, 
      child: Container(
        constraints: const BoxConstraints.expand(height: 40),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.red
        ),
        padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 5),

        child: const Center(
          child: Text(
            "Logout", 
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 15
            ),),
        ),
      ));
  }
}


//ignore:camel_case_types
class simpleNavWidget extends StatelessWidget{
  const simpleNavWidget({super.key});


  @override
  Widget build(BuildContext context){
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        TextButton(
          onPressed: (){}, 
          child: Card(
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
              ),

              padding: const EdgeInsets.all(10),

              child: const Column(
                children: [
                  Icon(Icons.notifications, color: Colors.black,),
                  SizedBox(height: 10,),
                  Text(
                    "Truck\nNotifications",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold
                    ),)
                ],
              ),
            ),

          )),




          TextButton(
          onPressed: (){}, 
          child: Card(
            child: Container(
              
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
              ),

              padding: const EdgeInsets.all(10),

              child: const Column(
                children: [
                  Icon(Icons.help_outline, color: Colors.black,),
                  SizedBox(height: 10,),
                  Text(
                    "Help\n    Center     ",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold
                    ),)
                ],
              ),
            ),

          ))       
      ],
    );
  }
}




//ignore:camel_case_types
class setablesWidget extends StatelessWidget{
  const setablesWidget({super.key});

  @override
  Widget build(BuildContext context){
    return const Column(
      children: [
        setableUnitWidget(
          name: "Phone number", 
          value: "+256 778764243", 
          icon: Icons.phone),
        SizedBox(height: 10,),
        setableUnitWidget(
          name: "Language", 
          value: "English (en)", 
          icon: Icons.language),
        SizedBox(height: 10,),
          setableUnitWidget(
          name: "Phone number", 
          value: "Uganda Shillings (UGX)", 
          icon: Icons.currency_exchange_outlined),
        SizedBox(height: 10,),
          setableUnitWidget(
          name: "Notification Setting", 
          value: ">", 
          icon: Icons.notifications_active),
      ],
    );
  }
}


//ignore:camel_case_types
class setableUnitWidget extends StatelessWidget{
  final String name;
  final String value;
  final IconData icon;
  const setableUnitWidget({
    super.key,
    required this.name,
    required this.value,
    required this.icon
    });


  @override
  Widget build(BuildContext context){
    return Row(
      children: [
        Icon(icon),
        const SizedBox(width: 5,),
        Text(
          name,
          style: const TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 16
          ),
          ),
        const Expanded(child:SizedBox()),
        Text(
          value,
          )
      ],
    );
  }
}