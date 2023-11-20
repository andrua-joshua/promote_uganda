import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:promote_uganda/firebase/database/user/user_database.dart';



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
  final GlobalKey<FormState> _key = GlobalKey<FormState>();
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
            onPressed: ()async{
            
              if(_key.currentState?.validate() ?? false){
                try{
                  
                  showDialog(
                    context: context, 
                    barrierDismissible: false,
                    builder: (context){
                      return AlertDialog(
                        content: FutureBuilder(
                          future: updateUserData(), 
                          builder:(context, snapshot) {
                            if(snapshot.hasData){
                              return Column(
                                children: [
                                  const Text("Data saved successfully", style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                    color: Colors.green
                                  ),),
                                  const SizedBox(height: 10,),

                                  TextButton(
                                    onPressed: ()=>Navigator.pop(context), 
                                    child:const Text("Okay", style: TextStyle(
                                      fontWeight: FontWeight.bold
                                    ),))
                                ],
                              );                              
                            }
                            if(snapshot.hasError){
                              return const Text("Error saving data", style: TextStyle(
                                color: Colors.red
                              ),);
                            }


                            return const CircularProgressIndicator();
                          },),
                      );
                    });


                }catch(e){
                  //
                }
              }


            }, 
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


  Future<void> updateUserData()async{
    final currentUser = await userDataManip.getUser(userId: FirebaseAuth.instance.currentUser?.uid??"");
    
    currentUser.contact = _contactController.text;
    currentUser.username = _usernameController.text;

    await userDataManip.updateUser(currentUser);


  }


  String? usernameValidate(String? txt){
    if(txt?.isEmpty??true){
      return "Enter a valid username";
    }
    return null;
  }


  String? contactValidate(String? txt){
    if(txt?.isEmpty??true && txt?.length!=10){
      return "Enter valid Contact";
    }

    return null;
  }


}