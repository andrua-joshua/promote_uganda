import 'package:flutter/material.dart';
import 'package:promote_uganda/routes/travel_explore/widgets/travel_explore_home_widgets.dart';

//ignore:camel_case_types
class travelExploreHomeScreen extends StatelessWidget {
  const travelExploreHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 228, 228, 228),
      appBar: AppBar(
        title: const Text(
          "Travel & Explore",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: const SafeArea(
          child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 100,
              ),
              Center(child: topHeadWidget()),
              SizedBox(
                height: 40,
              ),
              unitCatWidget(
                  title: "MOUNTAINS", 
                  briefinfo: "Uganda being a country with a diverse economy , "
                  "its made of numerous mountains.", 
                  imgUrl: "imgUrl"),
              SizedBox(
                height: 10,
              ),
              unitCatWidget(
                  title: "LANDSCAPE", 
                  briefinfo: "Landscape in uganda is one of the attractive features in uganda"
                  " with more than five kinds of landscap.", 
                  imgUrl: "imgUrl"),
              SizedBox(
                height: 10,
              ),
              unitCatWidget(
                  title: "CITY", 
                  briefinfo: "Despite uganda being an underseveloped country, its still though made "
                  "up some key cities that contribute alot to its development.", 
                  imgUrl: "imgUrl"),
              SizedBox(
                height: 10,
              ),
              unitCatWidget(
                  title: "LAKES AND RIVERS", 
                  briefinfo: "Uganda is full of more than just landscapes with some being "
                  "being known world wide through out the all continent and all over.", 
                  imgUrl: "imgUrl"),
              SizedBox(height: 10,),
                unitCatWidget(
                  title: "GAME PARKS", 
                  briefinfo: "Game Parks are the key point where most of the tourists in uganda "
                  "normally reach to first.", 
                  imgUrl: "imgUrl")
            ],
          ),
        ),
      )),
    );
  }
}
