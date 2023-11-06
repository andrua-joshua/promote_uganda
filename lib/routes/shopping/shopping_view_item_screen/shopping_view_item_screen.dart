import 'package:flutter/material.dart';
import 'package:promote_uganda/routes/shopping/shopping_view_item_screen/widgets/shopping_view_items_screen.dart';



///this is where the u can view a unit item
//ignore:camel_case_types
class shoppingItemViewScreen extends StatelessWidget{
  const shoppingItemViewScreen({super.key});


  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor:const Color.fromARGB(255, 230, 229, 229),
      appBar: AppBar(
        
        backgroundColor:  Colors.red,//const Color.fromARGB(255, 230, 229, 229),
        leading: IconButton(
          onPressed: () => Navigator.pop(context), 
          icon: const Icon(Icons.arrow_back, color: Colors.white,)),
      ),

      body: const SafeArea(
        child:Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 10,
              vertical: 5
            ),
            child: SingleChildScrollView (
              child:Column(
              children: [
                itemImagesSliderWidget(),
                itemDetailsWidget(),

                SizedBox(height: 30,),
                recentlyCheckedItemsWidget(),
                SizedBox(height: 5,)
              ],
            )),),
        ),

    );
  }
}