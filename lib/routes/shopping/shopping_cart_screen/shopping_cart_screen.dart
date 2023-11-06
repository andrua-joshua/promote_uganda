import 'package:flutter/material.dart';
import 'package:promote_uganda/routes/shopping/shopping_cart_screen/widgets/shopping_cat_screen_widgets.dart';
import 'package:promote_uganda/routes/shopping/shopping_view_item_screen/widgets/shopping_view_items_screen.dart';

//ignore:camel_case_types
class shoppingCartScreen extends StatelessWidget{
  const shoppingCartScreen({super.key});


  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        backgroundColor:  Colors.red,
        leading: IconButton(
          onPressed: ()=> Navigator.pop(context), 
          icon: const Icon(Icons.arrow_back, color: Colors.white,)),
        title: const Text(
          "Shopping cart",
          style: TextStyle(
            color: Colors.white,
            fontSize:22,
            fontWeight: FontWeight.bold
          ),),

          actions: [
            IconButton(
              onPressed: (){}, 
              icon: const Icon(Icons.search, color:Colors.white))
          ],
      ),

      body: const SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 10,),
              adsWidget(),
              SizedBox(height: 25,),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child:cartTitleWidget(cartItems: 3),),

              Divider(thickness: 1, color: Colors.red, indent: 10, endIndent: 10,),
              SizedBox(height: 5,),
              cartItemsWidget(),
              SizedBox(height: 20,),
              staticAdWidget(imgUrl: "assets/images/ads_v2.png"),
              SizedBox(height: 20,),
              recentlyCheckedItemsWidget(),
              SizedBox(height: 10,),
            ],
          ),
        )
      ),
    );
  }
}