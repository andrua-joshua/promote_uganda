import 'package:flutter/material.dart';


//ignore:camel_case_types
class scrollableNavWidget extends StatelessWidget{
  const scrollableNavWidget({super.key});


  @override
  Widget build(BuildContext context){
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [

          TextButton(
            onPressed: (){}, 
            child: Card (
              elevation: 5,
              child:Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white
              ),
              padding: const EdgeInsets.all(4),
              child: const Row(
                children: [
                  Icon(Icons.add_circle),
                  SizedBox(width: 5,),
                  Text(
                    "Additional Services",
                    style: TextStyle(
                      fontWeight: FontWeight.bold
                    ),
                    )
                ],
              ),
            ))),



          TextButton(
            onPressed: (){}, 
            child: Card (
              elevation: 5,
              child:Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white
              ),
              padding: const EdgeInsets.all(4),
              child: const Row(
                children: [
                  Icon(Icons.shop),
                  SizedBox(width: 5,),
                  Text(
                    "Promote Shop",
                    style: TextStyle(
                      fontWeight: FontWeight.bold
                    ),
                    )
                ],
              ),
            ))),



          TextButton(
            onPressed: (){}, 
            child: Card (
              elevation: 5,
              child:Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white
              ),
              padding: const EdgeInsets.all(4),
              child: const Row(
                children: [
                  Icon(Icons.tv),
                  SizedBox(width: 5,),
                  Text(
                    "Promote TV",
                    style: TextStyle(
                      fontWeight: FontWeight.bold
                    ),
                    )
                ],
              ),
            ))),


        ],
      ),
    );
  }
}