import 'package:flutter/material.dart';

//ignore:camel_case_types
class hotelRoomsScreen extends StatelessWidget{
  const hotelRoomsScreen({super.key});


  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        leading: IconButton(
          onPressed: ()=> Navigator.pop(context), 
          icon: const Icon(Icons.arrow_back, color: Colors.white,)),
        title: const Text(
          "Hotel Rooms",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 17
          ),),

          actions: [
            IconButton(
              onPressed: (){}, 
              icon: const Icon(Icons.search, color: Colors.white,))
          ],
      ),

      body:const SafeArea(
        child: SingleChildScrollView(
          child: Column(),
        )),
    );
  }
}