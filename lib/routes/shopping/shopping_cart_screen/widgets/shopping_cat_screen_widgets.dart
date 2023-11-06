import 'package:flutter/material.dart';
import 'package:promote_uganda/routes.dart';




//ignore:camel_case_types
class cartItemsWidget extends StatelessWidget{
  const cartItemsWidget({super.key});


  @override
  Widget build(BuildContext context){
    return Column(
      children: List.generate(3, 
      (index) => cartItemWidget(
        imgUrl: "assets/images/shoe.png", 
        productName: "Sneakers", 
        productPrice: 53, 
        productQuantity: 3, 
        productDiscount: index*7)),
    );
  }
}






//ignore:camel_case_types
class cartItemWidget extends StatelessWidget{
  final String imgUrl;
  final String productName;
  final double productPrice;
  final int productDiscount;
  final int productQuantity;
  const cartItemWidget({
    super.key,
    required this.imgUrl,
    required this.productName,
    required this.productPrice,
    required this.productQuantity,
    required this.productDiscount
    });



    @override
    Widget build(BuildContext context){
      return Container(
        height: 150,
        decoration: const BoxDecoration(),
        margin: const EdgeInsets.all(5),
        child: Row(
          children: [
        
            Container(
              constraints: const BoxConstraints.expand(width: 150),
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 226, 226, 226),
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage(imgUrl))
              ),

              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: const Color.fromARGB(255, 236, 235, 235)
                    ),
                    child:  Text(
                      "-$productDiscount%",
                      style: const TextStyle(
                        fontSize: 17,
                        color: Colors.orange
                      ),),
                  )
                ],
              ),
            ),
            const SizedBox(width: 10,),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    productName,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold
                    ),),
                  Text(" \$$productPrice"),
                  const SizedBox(height: 20,),
                  const itemControlWidget(currentItemsQuantity: 1)
                ],
              ))
          ],
        ),
      );
    }
}


//ignore:camel_case_types
class itemControlWidget extends StatelessWidget{
  final int currentItemsQuantity;
  const itemControlWidget({super.key, required this.currentItemsQuantity});


  @override
  Widget build(BuildContext context){
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color:const Color.fromARGB(255, 236, 236, 236)
          ),
          padding: const EdgeInsets.all(3),
          child: Row(
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.orange
                ),
                padding: const EdgeInsets.all(3),
                child:const Icon(
                  Icons.remove, color: Colors.white,
                ),
              ),

              Container(
                decoration:const BoxDecoration(
                  color: Colors.white
                ),
                padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                child:Text("$currentItemsQuantity"),
              ),

              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.orange
                ),
                padding: const EdgeInsets.all(3),
                child:const Icon(
                  Icons.add, color: Colors.white,
                ),
              )
            ],
          ),
        ),


        TextButton(
          onPressed: (){}, 
        child: Container(
          decoration: BoxDecoration(
            color: Colors.orange,
            borderRadius: BorderRadius.circular(10)
          ),

          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
          child: const Text(
            "Buy",
            style: TextStyle(
              color: Colors.white
            ),),))
      ],
    );
  }
}


//ignore:camel_case_types
class adsWidget extends StatelessWidget{
  const adsWidget({super.key});



  @override
  Widget build(BuildContext context){
    return Container(
      constraints: const BoxConstraints.expand(height: 50),
      decoration: const BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.fill,
          image: AssetImage("assets/images/ads.gif") )
      ),
    );
  }
}



//ignore:camel_case_types
class cartTitleWidget extends StatelessWidget{
  final int cartItems;
  const cartTitleWidget({super.key, required this.cartItems});

  @override
  Widget build(BuildContext context){
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "Cart ($cartItems)",
          style:const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold
          ),),


          TextButton(
            onPressed: ()=> Navigator.pushNamed(context, RouteGenerator.shophomescreen), 
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.amber
              ),
              padding: const EdgeInsets.all(5),
              child:const Text(
                "Buy more",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold
                ),
                ),
            ))
      ],
    );
  }
}



//ignore:camel_case_types
class staticAdWidget extends StatelessWidget{
  final String imgUrl;
  const staticAdWidget({super.key, required this.imgUrl});


  @override
  Widget build(BuildContext context){
    return Container(
      constraints: const BoxConstraints.expand(height: 160),
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.fill,
          image: AssetImage(imgUrl))
      ),
    );
  }
}