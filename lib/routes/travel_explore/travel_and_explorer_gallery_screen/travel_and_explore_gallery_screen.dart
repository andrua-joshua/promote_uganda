import 'package:flutter/material.dart';
import 'package:promote_uganda/routes/travel_explore/travel_and_explorer_gallery_screen/widgets/travel_and_explore_screen_widgets.dart';


//ignore:camel_case_types
class galleryScreen extends StatelessWidget {
  const galleryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: const Text(
          "Mt. Rwenzori",
          style: TextStyle(
              color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
      body: SafeArea(
          child: Container(
        constraints: const BoxConstraints.expand(),
        decoration: const BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage("assets/images/gameparks.jpg"))
        ),
        child: const SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            children: [
              SizedBox(height: 50,),
              gallerTopWidget(),
              SizedBox(height: 15,),
              // gallerImagesWidget(
              //   extend: 150, 
              //   height: 200, 
              //   itemsCount: 3)

            ],
          ),
        ),
      )),
    );
  }
}
