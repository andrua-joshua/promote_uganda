import 'package:flutter/material.dart';
import 'package:promote_uganda/routes.dart';


//ignore:camel_case_types
class topSecondWidget extends StatelessWidget{
  const topSecondWidget({super.key});


  @override
  Widget build(BuildContext context){
    return Row(
      children: [

        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: Colors.white, width: 1)
          ),

          child: const Row(),
        ),
        
      ],
    );
  }
} 



//ignore:camel_case_types
class titleAndInfoWidget extends StatelessWidget{
  final String title;
  final String info;
  const titleAndInfoWidget({
    super.key,
    required this.info,
    required this.title
    });


  @override
  Widget build(BuildContext context){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: const TextStyle(
            color: Color.fromARGB(255, 114, 39, 176),
            fontSize: 16,
            fontWeight: FontWeight.bold
          ),
          ),
        const Divider(thickness: 2, color: Color.fromARGB(255, 39, 2, 126), indent: 2, endIndent: 350,),
        Text(
          info,
          style: const TextStyle(
            wordSpacing: 5
          ),)
      ],
    );
  }
}



//ignore:camel_case_types
class gallaryWidget extends StatelessWidget{
  final String title;
  final List<String> imgs;
  const gallaryWidget({
    super.key,
    required this.title,
    required this.imgs
    });


  @override
  Widget build(BuildContext context){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
          title,
          style: const TextStyle(
            color: Color.fromARGB(255, 114, 39, 176),
            fontSize: 16,
            fontWeight: FontWeight.bold
          ),
          ),

          TextButton(
            onPressed: ()=> Navigator.pushNamed(context, RouteGenerator.galleryscreen), child: const Text("View all"))
            ],
          ),
        ),
        const Divider(thickness: 2, color: Color.fromARGB(255, 39, 2, 126), indent: 2, endIndent: 350,),
        
        SizedBox(
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: List.generate(
                imgs.length, 
                (index) => Container(
                  height: 150,
                  width: 140,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage(imgs[index]))
                  ),
                  margin: const EdgeInsets.all(5),
                )),
            ),
          ),
        )
      ],
    );
  }
}
