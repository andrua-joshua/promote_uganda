import 'package:flutter/material.dart';
import 'package:promote_uganda/routes.dart';
import 'package:promote_uganda/routes/shopping/shopping_start_screen/widgets/shopping_start_screen_widget.dart';


///the first screen when cliced shopping

//ignore:camel_case_types
class shoppingHomeScreen extends StatelessWidget{
  const shoppingHomeScreen({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: const Text(
          "Shopping",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white
          ),
        ),

        leading: IconButton(
          onPressed: ()=>Navigator.pop(context), 
          icon: const Icon(Icons.arrow_back, color: Colors.white,)),

        actions: [
          IconButton(
            onPressed: ()=> Navigator.pushNamed(context, RouteGenerator.shoppingcartscreen), 
            icon: const Icon(Icons.shopping_cart, color: Colors.white,)),
          IconButton(
            onPressed: (){}, 
            icon: const Icon(Icons.search, color: Colors.white,))
        ],
      ),


      body: const SafeArea(
        child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 0,
              vertical: 5),
            child: Column(
              children: [
                // SizedBox(height: 100,),
                adsWidget(),
                SizedBox(height: 10,),
                Padding(
                  padding:EdgeInsets.symmetric(horizontal: 10),
                  child: topNavWidget(), ),
                SizedBox(height: 15,),
                Expanded(child: itemsWidget())
              ],
            ),
          ),
        ),
    );
  }
}