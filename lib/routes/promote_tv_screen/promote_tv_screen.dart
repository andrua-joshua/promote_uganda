import 'package:flutter/material.dart';
import 'package:promote_uganda/routes/home_screen/home_tab/widgets/home_tab_widgets.dart';
import 'package:promote_uganda/routes/promote_tv_screen/widgets/promote_tv_screen_widgets.dart';

//ignore:camel_case_types
class promoteTvScreen extends StatelessWidget {
  const promoteTvScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: const Text(
          "Promote Tv",
          style: TextStyle(
              fontWeight: FontWeight.bold, color: Colors.white, fontSize: 18),
        ),
        leading: IconButton(
            onPressed: () => Navigator.pop(context),
            icon: const Icon(Icons.arrow_back, color: Colors.white,)),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.notifications, color: Colors.white,)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.search, color: Colors.white,)),
        ],
      ),
      body: const SafeArea(
          child: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: promoteTvChipsWidget(),
            ),
            SizedBox(
              height: 20,
            ),
            adsWidget(
                briefInfo: "Food at your doorstep just one click"
                    "away | Delivery and more.\n"
                    "You can now order using Jumia food "
                    "from your favourite restaurants",
                imgUrl: "assets/images/ads_v2.png",
                rating: "4.4"),
            SizedBox(
              height: 25,
            ),
            fullVideoComponentWidget(
                videoUrl: "https://youtu.be/bPv5pb7AcYs?si=ImaH58T9jC3MskK_"),
            SizedBox(
              height: 10,
            ),
            fullVideoComponentWidget(
                videoUrl: "https://youtu.be/bPv5pb7AcYs?si=ImaH58T9jC3MskK_"),
            SizedBox(
              height: 10,
            ),
            fullVideoComponentWidget(
                videoUrl: "https://youtu.be/bPv5pb7AcYs?si=ImaH58T9jC3MskK_"),
                SizedBox(height: 30,),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              child: Column(
                children: [
                  showAllWidget(title: "Promote TV"),
                  shortStoriesWidget(storyTitle: "")
                ],
              ),
            )
          ],
        ),
      )),
    );
  }
}
