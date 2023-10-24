import 'package:flutter/material.dart';
import 'package:promote_uganda/routes/shopping/shopping_start_screen/widgets/shopping_start_screen_widget.dart';


///the first screen when cliced shopping

//ignore:camel_case_types
class shoppingHomeScreen extends StatelessWidget{
  const shoppingHomeScreen({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text(
          "Shopping",
          style: TextStyle(
            fontWeight: FontWeight.bold
          ),
        ),

        actions: [
          IconButton(
            onPressed: (){}, 
            icon: const Icon(Icons.search, color: Colors.black,))
        ],
      ),


      body: const SafeArea(
        child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 10,
              vertical: 5),
            child: Column(
              children: [
                SizedBox(height: 10,),
                topNavWidget(),
                SizedBox(height: 15,),
                Expanded(child: itemsWidget())
              ],
            ),
          ),
        ),
    );
  }
}