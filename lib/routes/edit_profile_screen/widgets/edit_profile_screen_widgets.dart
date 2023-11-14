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


//ignore:camel_case_types
class simpleEditFormWidget extends StatefulWidget{
 const simpleEditFormWidget({super.key});


 @override
 _simpleEditFormState createState() => _simpleEditFormState();

}

//ignore:camel_case_types
class _simpleEditFormState extends State<simpleEditFormWidget>{
  final GlobalKey _key = GlobalKey<FormState>();
  late final TextEditingController _usernameController;
  late final TextEditingController _contactController;
  late final TextEditingController _passwordController;


  @override
  void initState(){
    super.initState();
    _usernameController = TextEditingController();
    _contactController = TextEditingController();
    _passwordController = TextEditingController();
  }


  @override
  void dispose(){
    _usernameController.dispose();
    _contactController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context){
    return Form(
      key: _key,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Edit username",
            style: TextStyle(
              color: Colors.grey,
              fontWeight: FontWeight.w400,
              fontSize: 15,
            ),),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: const Color.fromARGB(255, 230, 229, 229)
            ),

            padding: const EdgeInsets.all(3),

            child: TextFormField(
              controller: _usernameController,
              decoration:const InputDecoration(
                border: InputBorder.none,
                hintText: "Edit username"
              ),
            ),
          ),

        const SizedBox(height: 10,),

          const Text(
            "Edit Contact",
            style: TextStyle(
              color: Colors.grey,
              fontWeight: FontWeight.w400,
              fontSize: 15,
            ),),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: const Color.fromARGB(255, 230, 229, 229)
            ),

            padding: const EdgeInsets.all(3),

            child: TextFormField(
              controller: _contactController,
              keyboardType: TextInputType.number,
              
              decoration:const InputDecoration(
                border: InputBorder.none,
                hintText: "Edit contact"
              ),
            ),
          ), 

          // Container(
          //   decoration: BoxDecoration(
          //     borderRadius: BorderRadius.circular(10),
          //     color: const Color.fromARGB(255, 230, 229, 229)
          //   ),

          //   padding: const EdgeInsets.all(3),

          //   child: TextFormField(
          //     controller: _passwordController,
          //     decoration:const InputDecoration(
          //       border: InputBorder.none,
          //       hintText: "change password"
          //     ),
          //   ),
          // )


          const SizedBox(height: 50,),

          TextButton(
            onPressed: (){}, 
            child: Container(
              constraints: const BoxConstraints.expand(
                height: 35
              ),
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(5)
              ),

              padding: const EdgeInsets.all(3),

              child: const Center(child:Text(
                "Save Changes",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 16
                ),)),
            ))
        ],),
    );
  }


}