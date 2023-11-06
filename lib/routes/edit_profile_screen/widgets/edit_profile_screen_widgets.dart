import 'package:flutter/material.dart';



//ignore:camel_case_types
class topEditWidget extends StatelessWidget{
  final String imgUrl;
  const topEditWidget({super.key, required this.imgUrl});

  @override
  Widget build(BuildContext context){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        editableProfileImage(imgUrl: imgUrl)
      ],
    );
  }
}



//ignore:camel_case_types
class editableProfileImage extends StatelessWidget{
  final String imgUrl;
  const editableProfileImage({super.key, required this.imgUrl});


  @override
  Widget build(BuildContext context){
    return Container(
      width: 120,
      height:  120,

      decoration: BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(
          fit: BoxFit.fill,
          image: AssetImage(imgUrl)),
          
      ),


      child: Container(
        constraints: const BoxConstraints.expand(),
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
          color: Color.fromARGB(155, 244, 67, 54)
        ),

        child: Center(
          child: IconButton(
            onPressed: (){}, 
            icon: const Icon(Icons.photo_camera, color: Colors.white,)),
        ),
      )
    );
  }
}



// class simpleEditFormWidget extends StatefulWidget{
//  const simpleEditFormWidget({super.key});


//  @override

// }


// class _simpleEditFormState extends State<simpleEditFormWidget>{
//   final GlobalKey _key = GlobalKey<FormState>();
//   late final TextEditingController _usernameController;
//   late final TextEditingController _contactController;
//   late final TextEditingController _passwordController;


//   @override
//   void initState(){
//     _usernameController = TextEditingController();
//     _contactController = TextEditingController();
//     _passwordController = TextEditingController();
//   }


//   @override
//   void dispose(){
//     _usernameController.dispose();
//     _contactController.dispose();
//     _passwordController.dispose();
//   }

//   @override
//   Widget build(BuildContext context){
//     return Form(
//       key: _key,
//       child: Column(children: [],),
//     );
//   }


// }