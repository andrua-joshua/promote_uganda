import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:promote_uganda/firebase/database/user/shoppingItems.dart';

//ignore:camel_case_types
class itemImagesSliderWidget extends StatelessWidget {
  final List<dynamic> images;
  const itemImagesSliderWidget({super.key, required this.images});

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints.expand(height: 300),
      decoration: BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage(images[0].toString()))),
    );
  }
}

//ignore:camel_case_types
class itemDetailsWidget extends StatelessWidget {
  final String itemName;
  final String itemDescription;
  final String itemPrice;
  const itemDetailsWidget({
    required this.itemDescription,
    required this.itemName,
    required this.itemPrice,
    super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      
      decoration: const BoxDecoration(color: Colors.white),
      padding: const EdgeInsets.all(10),
        child: infoWidget(
          itemName: itemName,
          itemPrice: itemPrice,
          description: itemDescription,

        ),
      
    );
  }
}

//ignore:camel_case_types
class infoWidget extends StatelessWidget {
  final String itemName;
  final String itemPrice;
  final String description;
  const infoWidget(
      {required this.itemName, required this.description, super.key, required this.itemPrice});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                itemName,
                style:
                    const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.heart_broken_outlined, color: Colors.amber,))
            ],
          ),
        ),
        SizedBox(
          child: Row(
            children: [
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color.fromARGB(255, 235, 233, 233)),
                padding: const EdgeInsets.all(5),
                child: const Text(
                  "Rate us",
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.grey),
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              SizedBox(
                child: Row(
                  children: [
                    const Icon(
                      Icons.star,
                      color: Colors.orange,
                    ),
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: const Color.fromARGB(255, 235, 233, 233)),
                      padding: const EdgeInsets.all(5),
                      child: const Text(
                        "4.5 Our Rating",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.grey),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        const Text(
          "Description",
          style: TextStyle(
              color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold),
        ),
        const SizedBox(
          height: 5,
        ),
        Text(
          description,
          style: const TextStyle(),
        ),
        const SizedBox(
          height: 20,
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: quantityWidget(),
        ),
        const SizedBox(
          height: 40,
        ),
       Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: itemBottomInfoWidget(price: itemPrice))
      ],
    );
  }
}

//ignore:camel_case_types
class itemBottomInfoWidget extends StatelessWidget {
  final String price;
  const itemBottomInfoWidget({super.key, required this.price});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        SizedBox(
          child: Column(
            children: [
              const Text(
                "Item Price",
                style: TextStyle(color: Colors.grey),
              ),
              Text(
                "\$$price",
                style:
                    const TextStyle(
                      fontWeight: FontWeight.bold, 
                      fontSize: 19,
                      color: Colors.green
                      ),
              )
            ],
          ),
        ),
        TextButton(
          onPressed: () {},
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15), color: Colors.orange),
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: const Text(
              "Add to Cart",
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
          ),
        )
      ],
    );
  }
}

//ignore:camel_case_types
class quantityWidget extends StatelessWidget {
  const quantityWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          "Quantity",
          style: TextStyle(
              color: Colors.black, fontWeight: FontWeight.bold, fontSize: 17),
        ),
        const SizedBox(
          width: 30,
        ),
        Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: const Color.fromARGB(255, 224, 224, 224)),
          padding: const EdgeInsets.all(2),
          child: Row(
            children: [
              TextButton(
                  onPressed: () {},
                  child: const Text(
                    "-",
                    style: TextStyle(fontSize: 20),
                  )),
              const Text(
                "1",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
              ),
              TextButton(
                  onPressed: () {},
                  child: const Text(
                    "+",
                    style: TextStyle(fontSize: 20),
                  )),
            ],
          ),
        )
      ],
    );
  }
}




//ignore:camel_case_types
class recentlyCheckedItemsWidget extends StatelessWidget{
  const recentlyCheckedItemsWidget({super.key});


  @override
  Widget build(BuildContext context){
    return SizedBox(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Recently Viewed",
            style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 17
            ),),
          const SizedBox(height: 7,),
          StreamBuilder<QuerySnapshot>(
            stream: shoppingItemDataManip.getAllItemsSnapshot(), 
            builder:(context, snapshot) {
              if(snapshot.hasError){
                return const Center(child: Text("check your network!"),);
              }
              if(snapshot.hasData){
                return SingleChildScrollView(
        scrollDirection: Axis.horizontal,

        child: Row(
          children: 
          List.generate(
            snapshot.data!.size, 
            (index)
           => unitRecentItemWidget(
            imgUrl: snapshot.data!.docs[index].get("itemImages")[0].toString(),
            productName: snapshot.data!.docs[index].get("itemName").toString(), 
            productPrice: snapshot.data!.docs[index].get("itemPrice"), 
            discount: snapshot.data!.docs[index].get("itemDiscount"))),
        ),
      );
              }
              return const Center(
                child: CircularProgressIndicator(),
              );
            },),
        ],
      )
    );
  }
}





//ignore:camel_case_types
class unitRecentItemWidget extends StatelessWidget{
  final String imgUrl;
  final String productName;
  final double productPrice;
  final int discount;
  const unitRecentItemWidget({
    super.key,
    required this.imgUrl,
    required this.productName,
    required this.productPrice,
    required this.discount
    });


  @override
  Widget build(BuildContext context){
    return Card(
      child:Column(
      children: [
        Container(
          width: 150,
          height: 160,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),

            image: DecorationImage(
              fit: BoxFit.cover,
              filterQuality: FilterQuality.high,
              image: NetworkImage(imgUrl))
          ),

          padding: const EdgeInsets.all(5),
          
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: const Color.fromARGB(255, 240, 239, 239)
                ),

                padding: const EdgeInsets.all(5),
                child: Text(
                  "-$discount%",
                  style:const TextStyle(
                    fontSize: 17,
                    color: Colors.orange
                  ),),
              )
            ],
          ),

        ),
        Text(productName),
        SizedBox(
          child: Row(
            children: [
              const Text("Price: "),
              Text(
                "\$$productPrice ",
                style: const TextStyle(
                  color: Colors.amberAccent,
                  fontSize: 17
                ),)
            ],
          ),
        )
      ],
    ));
  }
}


