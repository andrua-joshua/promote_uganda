import 'package:flutter/material.dart';
import 'package:promote_uganda/routes/travel_explore/travel_and-explore_cat_screen/widgets/travel_and_explore_cat_screen_widgets.dart';
import 'package:promote_uganda/routes/travel_explore/travel_explore_details_screen/widgets/travel_explore_details_screen_widgets.dart';

//ignore:camel_case_types
class travelExploreDetailsScreen extends StatelessWidget {
  const travelExploreDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 228, 228, 228),
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Details",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 17
          ),),
      ),
      body: const SafeArea(
          child: SingleChildScrollView(
        child: Column(
          children: [
            topImgGradientWidget(imgUrl: "assets/images/mountUg.jpg"),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: titleAndInfoWidget(
                title: "Details",
                info: "Uganda, located in East Africe , is a diverse"
                    " and cultuarally rich country often refered go as "
                    "\"Pearl of Africa\". It is known for its stunning natural beauty, including the "
                    "majestic Rwenzori Mountains, the source of the Nile River, and numerous other national "
                    "parks teaming with diverse wildlife, such as gorillas, lions, and elephants."),),


                    SizedBox(
              height: 10,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: titleAndInfoWidget(
                title: "History",
                info: "Uganda, located in East Africe , is a diverse"
                    " and cultuarally rich country often refered go as "
                    "\"Pearl of Africa\". It is known for its stunning natural beauty, including the "
                    "majestic Rwenzori Mountains, the source of the Nile River, and numerous other national "
                    "parks teaming with diverse wildlife, such as gorillas, lions, and elephants."),),


            Padding(
              padding: EdgeInsets.all(10),
              child: gallaryWidget(title: "Gallery", 
              imgs: [
                "assets/images/mountUg.jpg",
                "assets/images/rivers.jpg",
                "assets/images/gameparks.jpg",
                "assets/images/city.jpg",
                "assets/images/landscape.jpg",
              ]),),



            SizedBox(height: 20,),
            Center(
              child: Text(
                "Welocome to Uganda.",
                style: TextStyle(
                  color: Colors.purple,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic
                ),),),
            SizedBox(height: 10,),

          ],
        ),
      )),
    );
  }
}
