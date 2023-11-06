import 'package:flutter/material.dart';
import 'package:promote_uganda/routes.dart';

///for the top navigations throuh the items
//ignore:camel_case_types
class topNavWidget extends StatelessWidget {
  const topNavWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          Chip(
            label: Text("All"),
            labelStyle: TextStyle(color: Colors.white),
            backgroundColor: Colors.red,
          ),
          SizedBox(
            width: 5,
          ),
          Chip(label: Text("Clothes")),
          SizedBox(
            width: 5,
          ),
          Chip(label: Text("Electronics")),
          SizedBox(
            width: 5,
          ),
          Chip(label: Text("Bags And accesories")),
          SizedBox(
            width: 5,
          ),
          Chip(label: Text("Shoes")),
        ],
      ),
    );
  }
}

//ignore:camel_case_types
class itemsWidget extends StatelessWidget {
  const itemsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.extent(
      maxCrossAxisExtent: 260,
      //cacheExtent: 150,
      mainAxisSpacing: 20,
      crossAxisSpacing: 5,
      children: List.generate(
          13,
          (index) => const unitItemWidget(
              name: "Sneakers air",
              price: "633",
              imgUrl: "assets/images/shoe.png")),
    );
  }
}

//for the unit item to be sold
//ignore:camel_case_types
class unitItemWidget extends StatelessWidget {
  final String name;
  final String price;
  final String imgUrl;
  const unitItemWidget({
    super.key,
    required this.name,
    required this.price,
    required this.imgUrl,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () =>
            Navigator.pushNamed(context, RouteGenerator.shopItemviewscreen),
        child: SizedBox(
          height: 200,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                constraints: const BoxConstraints.expand(height: 150),
                margin: const EdgeInsets.symmetric(horizontal: 15),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color.fromARGB(255, 214, 213, 213),
                    image: DecorationImage(
                        fit: BoxFit.contain, image: AssetImage(imgUrl))),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: const Color.fromARGB(255, 238, 238, 238)),
                      padding: const EdgeInsets.all(4),
                      child: const Text(
                        "-40%",
                        style: TextStyle(color: Colors.orange),
                      ),
                    ),
                    SizedBox(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          const Text(
                            "Price: ",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "\$$price  ",
                            style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.deepOrangeAccent,
                                fontSize: 17),
                          ),
                          const SizedBox(
                            width: 5,
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Text(
                  name,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                ),
              ),
            ],
          ),
        ));
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