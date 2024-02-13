import 'package:cloud_firestore/cloud_firestore.dart';

//ignore:camel_case_types
class shoppingItemDataManip {
  //GET SHOPPING ITEM
  //REMOVE SHOPPING ITEM
  //ADD TO CART
  //REMOVE FROM CART
  //GET SHOPPING ITEMS STREAM

  //static Future<>

  static final shoppingItemsCollection = FirebaseFirestore
      .instance.collection("shoppingItems");

  static Stream<QuerySnapshot> getAllItemsSnapshot(){
    
    return shoppingItemsCollection.snapshots();
  } 

  static DocumentReference<Map<String, dynamic>> getShoppingItem({
    required String itemId}){
      
      return shoppingItemsCollection.doc(itemId);
  }


  static Stream<DocumentSnapshot<Map<String, dynamic>>> getShoppingItemSnapshot({
    required String itemId}){
      
      return shoppingItemsCollection.doc(itemId).snapshots();
  }



  


}