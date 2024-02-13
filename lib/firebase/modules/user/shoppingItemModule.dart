//ignore: camel_case_types
class shoppingItemModule{
  final String itemCategory;
  final String itemDescription;
  final double itemDiscount; 
  final List<String> itemImages;
  final String itemName;
  final double itemPrice;
  final String itemID;

  const shoppingItemModule({
    required this.itemCategory,
    required this.itemDescription,
    required this.itemDiscount,
    required this.itemID,
    required this.itemImages,
    required this.itemName,
    required this.itemPrice
  });


  String get getItemName => itemName;
  String get getItemDescription => itemDescription;
  String get getItemID => itemID;
  String get getItemCategory => itemCategory;
  List<String> get getItemImages => itemImages;
  double get getItemPrice => itemPrice;
  double get getItemDiscount => itemDiscount;


  Map<String, dynamic> toJson(){

    return {
      "itemCategory": itemCategory,
      "itemDescription": itemDescription,
      "itemDiscount": itemDiscount,
      "itemImages": itemImages,
      "itemName": itemName,
      "itemPrice": itemPrice
    };
  }


}