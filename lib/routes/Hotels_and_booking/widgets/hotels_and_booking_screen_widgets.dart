import 'package:flutter/material.dart';


//ignore:camel_case_types
class topSearchWidget extends StatelessWidget{
  const topSearchWidget({super.key});


  @override
  Widget build(BuildContext context){
    return LayoutBuilder(
      builder: (context, size){
        return Row(
          mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: size.maxWidth*0.7,
          //height: 30,
         decoration: BoxDecoration(
          color:const Color.fromARGB(255, 238, 237, 237),
          borderRadius: BorderRadius.circular(10)
         ),
         padding: const EdgeInsets.all(10),

         child: const Row(
          children: [
            Icon(Icons.search),
            Text(
              "Search hotels around",
              style: TextStyle(
                color: Colors.grey,
                fontWeight: FontWeight.bold
              ),)
          ],
         ), 
        ),

        IconButton(
          onPressed: (){}, 
          icon: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.black
            ),

            padding: const EdgeInsets.all(10),

            child: const Icon(Icons.settings, color: Colors.white,),
          ))

      ],
    );
      });
  }
}



//ignore:camel_case_types
class unitWidget extends StatelessWidget{
  final String imgUrl;
  final String hotelName;
  final String hotelLocation;
  final String price;
  const unitWidget({
    super.key,
    required this.hotelName,
    required this.hotelLocation,
    required this.imgUrl,
    required this.price
    });


  @override
  Widget build(BuildContext context){
    return Card(
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
                fit: BoxFit.fill,
                image: AssetImage(imgUrl))
            ),
          ),

          const SizedBox(height: 10,),
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
                          color: Colors.purple
                        ),),
                      Text(
                        hotelLocation,
                        style:const TextStyle(
                          color: Color.fromARGB(255, 58, 58, 3),
                          fontFamily: "mono"
                        ),)
                    ],
                  ),
                ),
                Text(
                  "\$$price /night",
                  style: const TextStyle(
                    fontWeight: FontWeight.bold
                  ),)
              ],
            ),
          ),)
        ],
      ),
    );
  }
}