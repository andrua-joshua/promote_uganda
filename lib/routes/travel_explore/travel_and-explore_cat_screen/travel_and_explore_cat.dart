import 'package:flutter/material.dart';
import 'package:promote_uganda/routes/travel_explore/travel_and-explore_cat_screen/widgets/travel_and_explore_cat_screen_widgets.dart';


//ignore:camel_case_types
class travelAndExploreCatScreen extends StatelessWidget{
  final String category;
  const travelAndExploreCatScreen({super.key, required this.category});


  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 223, 223, 223),
      appBar: AppBar(
        title: Text(
          category,
          style: const TextStyle(
            fontWeight: FontWeight.bold
          ),
          ),
        centerTitle: true,
      ),

      body: const  SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 0, vertical: 0),
            child: Column(
              children: [
                topImgGradientWidget(imgUrl: "assets/images/mountUg.jpg"),

                SizedBox(height: 10,),

                catUnitWidget(
                  imgUrl: "assets/images/rivers.jpg", 
                  title: "Mount Rwenzori"),
                
                catUnitWidget(
                  imgUrl: "assets/images/mountUg.jpg", 
                  title: "Mount Rwenzori"),

                  catUnitWidget(
                  imgUrl: "assets/images/landscape.jpg", 
                  title: "Mount Rwenzori"),

                  catUnitWidget(
                  imgUrl: "assets/images/gameparks.jpg", 
                  title: "Mount Rwenzori"),


                  SizedBox(height: 10,),
              ],
            ),),
        )),
    );
  }
}