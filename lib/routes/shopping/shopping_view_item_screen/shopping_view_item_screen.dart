import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:promote_uganda/firebase/database/user/shoppingItems.dart';
import 'package:promote_uganda/routes/shopping/shopping_view_item_screen/widgets/shopping_view_items_screen.dart';



///this is where the u can view a unit item
//ignore:camel_case_types
class shoppingItemViewScreen extends StatelessWidget{
  final String itemId;
  const shoppingItemViewScreen({
    required this.itemId,
    super.key});


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

      body: SafeArea(
        child:Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 10,
              vertical: 5
            ),
            child: StreamBuilder<DocumentSnapshot>(
              stream: shoppingItemDataManip.getShoppingItemSnapshot(itemId: itemId),
              builder:(context, snapshot) {
                
                if(snapshot.hasError){
                  return const Center(
                    child: Text("Check your network!"),
                  );
                }
                if(snapshot.hasData){
                  return SingleChildScrollView (
              child:Column(
              children: [
                itemImagesSliderWidget(
                  images: snapshot.data!.get("itemImages"),
                ),
                itemDetailsWidget(
                  itemPrice: snapshot.data!.get("itemPrice").toString(),
                  itemDescription: snapshot.data!.get("itemDescription"),
                  itemName: snapshot.data!.get("itemName"),
                ),

                const SizedBox(height: 30,),
                const recentlyCheckedItemsWidget(),
                const SizedBox(height: 5,)
              ],
            ));
                }
                return const Center(
                  child: CircularProgressIndicator(),);
              },),),
        ),

    );
  }
}