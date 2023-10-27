import 'package:flutter/material.dart';
import 'package:promote_uganda/routes/home_screen/home_tab/widgets/home_tab_widgets.dart';



//ignore:camel_case_types
class homeTab extends StatelessWidget{
  const homeTab({super.key});


  @override
  Widget build(BuildContext context){
    return CustomScrollView(
      slivers: [
        SliverAppBar(
          //backgroundColor: const Color.fromARGB(255, 18, 116, 228),
          title: const Text(
            "Hello [User]",
            style: TextStyle(
              fontWeight: FontWeight.bold
            ),
            ),

          actions: [
            IconButton(
            onPressed: (){}, 
            icon: const Icon(Icons.account_circle, size: 30,))
          ],
          //onStretchTrigger: ,
          expandedHeight: 270,
          flexibleSpace: Container(
            constraints: const BoxConstraints.expand(),
            decoration:const BoxDecoration(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(20), 
              bottomRight: Radius.circular(20),
            ),
            color: Colors.red  
            ),
            padding: const EdgeInsets.all(10),

            child: Column(
              children: [
                const SizedBox(height: 70,),
                const Text(
                  "The Heart of Uganda\n at your finger tips",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold
                  ),),

                  const SizedBox(height: 20,),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white
                    ),

                    margin: const EdgeInsets.symmetric(
                      horizontal: 30
                    ),
                    padding:  const EdgeInsets.all(5),
                    child: const Row(
                      children: [
                        Icon(Icons.search),
                        SizedBox(width: 5,),
                        Text(
                          "Search",
                          style: TextStyle(
                            color: Colors.grey
                          ),)
                      ],
                    ),
                  ),

                  const SizedBox(height: 30,),
                  const scrollableNavWidget()
              ],
            ),
          ),
        )
      ],
    );
  }
}