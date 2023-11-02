import 'package:flutter/material.dart';



//ignore:camel_case_types
class promoteTvChipsWidget extends StatelessWidget{
  const promoteTvChipsWidget({super.key});


  @override
  Widget build(BuildContext context){
    return const SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          drilloxChipsWidget(
            isActive: true, 
            label: "New"),

          drilloxChipsWidget(
            isActive: false, 
            label: "Trending"),

          drilloxChipsWidget(
            isActive: false, 
            label: "Explorer"),

          drilloxChipsWidget(
            isActive: false, 
            label: "invest"),

          drilloxChipsWidget(
            isActive: false, 
            label: "Travel")
        ],
      ),
    );
  }
}



//ignore:camel_case_types
class drilloxChipsWidget extends StatelessWidget{
  final bool isActive;
  final String label;
  const drilloxChipsWidget({
    super.key, 
    required this.isActive,
    required this.label});


  @override
  Widget build(BuildContext context){
    return Card(child:Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: isActive? Colors.red:null
      ),

      padding: const EdgeInsets.all(5),
      margin: const EdgeInsets.symmetric(vertical: 0, horizontal: 0),

      child: Text(
        label, 
        style: TextStyle(
          color: isActive?Colors.white:Colors.black,
        ),),
    ));
  }
}



//ignore:camel_case_types
class adsWidget extends StatelessWidget{
  final String imgUrl;
  final String briefInfo;
  final String rating; 
  const adsWidget({
    super.key,
    required this.briefInfo,
    required this.imgUrl,
    required this.rating
    });

  @override
  Widget build(BuildContext context){
    return Column(
      children: [
        Container(
          constraints: const BoxConstraints.expand(
            height: 200
          ),
          color: Colors.grey,
        ),

        const SizedBox(height: 10,),

        SizedBox(
          child: Row(
            children: [
              const SizedBox(width: 50,),
              Expanded(
                child: Text(
                  briefInfo,
                  style: const TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                    fontSize: 17
                  ),))
            ],
          ),
        ),


        (
          SizedBox(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child:Row(
            children: [
              const Text("Ads"),
              const Expanded(child: SizedBox()),
              Text(rating),
              const Icon(Icons.star, color: Colors.yellow,),
              const SizedBox(width: 5,),
              const Text("FREE"),
            ],
          )),
        ))
      ],
    );
  }
}





///----for the holders