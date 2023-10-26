import 'package:flutter/material.dart';
import 'package:promote_uganda/routes.dart';

//ignore:camel_case_types
class topSearchWidget extends StatelessWidget {
  const topSearchWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, size) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: size.maxWidth * 0.7,
            //height: 30,
            decoration: BoxDecoration(
                color: const Color.fromARGB(255, 238, 237, 237),
                borderRadius: BorderRadius.circular(10)),
            padding: const EdgeInsets.all(10),

            child: const Row(
              children: [
                Icon(Icons.search),
                Text(
                  "Search hotels around",
                  style: TextStyle(
                      color: Colors.grey, fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
          IconButton(
              onPressed: () {},
              icon: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.black),
                padding: const EdgeInsets.all(10),
                child: const Icon(
                  Icons.settings,
                  color: Colors.white,
                ),
              ))
        ],
      );
    });
  }
}

//ignore:camel_case_types
class unitWidget extends StatelessWidget {
  final String imgUrl;
  final String hotelName;
  final String hotelLocation;
  final String price;
  const unitWidget(
      {super.key,
      required this.hotelName,
      required this.hotelLocation,
      required this.imgUrl,
      required this.price});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ()=>Navigator.pushNamed(context, RouteGenerator.hotelbookingscreen),
      child:Card(
      
      elevation: 5,
      child: Column(
        children: [
          Container(
            constraints: const BoxConstraints.expand(
              height: 200,
            ),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                    fit: BoxFit.fill, image: AssetImage(imgUrl))),


            padding: const EdgeInsets.all(10),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.black
                  ),

                  child: const Row(
                    children: [
                      Icon(Icons.star, color: Colors.white,size: 16,),
                      Icon(Icons.star, color: Colors.white,size: 16,),
                      Icon(Icons.star, color: Colors.white,size: 16,),
                    ],
                  ),
                ),


                Container(
                  decoration:const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color.fromARGB(140, 253, 253, 253)
                  ),
                  padding: const EdgeInsets.all(3),
                  child: const Icon(Icons.heart_broken,color: Colors.white,size: 14,),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: SizedBox(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    child: Column(
                      children: [
                        Text(
                          hotelName,
                          style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 17,
                              fontFamily: "roboto",
                              color: Colors.purple),
                        ),
                        SizedBox(
                          child: Row(
                            children: [
                              const Icon(Icons.location_on, color: Colors.red,),
                              Text(
                          hotelLocation,
                          style: const TextStyle(
                              color: Color.fromARGB(255, 58, 58, 3),
                              fontFamily: "mono",
                              fontSize: 16,
                              fontWeight: FontWeight.bold),
                        )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Min: \$$price /night",
                    style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 17,
                        color: Colors.orange),
                  )
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
        ],
      ),
    ));
  }
}
