import 'package:flutter/material.dart';
import 'package:promote_uganda/routes/travel_explore/widgets/travel_explore_home_widgets.dart';


//ignore:camel_case_types
class topImgGradientWidget extends StatelessWidget{
  final String imgUrl;
  const topImgGradientWidget({super.key, required this.imgUrl});

  @override
  Widget build(BuildContext context){
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(imgUrl)),

      ),


      child: Container(
        decoration:  const BoxDecoration(
          color: Color.fromARGB(195, 223, 223, 223)
        ),
        child: const Column(
          children: [
            SizedBox(height: 100,),
            topHeadWidget(title: "Mountains",),
            SizedBox(height: 10,)
          ],
        ),
      ));
  }
}


//ignore:camel_case_types
class catUnitWidget extends StatelessWidget{
  final String imgUrl;
  final String title;
  const catUnitWidget({
    super.key,
    required this.imgUrl,
    required this.title,
    });


    @override
    Widget build(BuildContext context){
      return Container(
        constraints:  const BoxConstraints.expand(height: 200),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          image: DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage(imgUrl))
        ),

        margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
        padding: const EdgeInsets.only(left: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 17
              ),),
            const SizedBox(height: 10,)
          ],
        ),
      );
    }
}