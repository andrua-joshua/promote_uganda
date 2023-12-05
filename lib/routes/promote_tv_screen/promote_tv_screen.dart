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
                imgUrl: "https://ug.jumia.is/cms/UG_WK_48_Xmas_Sale_TBs_400x320-25.png",
                rating: "4.4"),
            SizedBox(
              height: 25,
            ),
            fullVideoComponentWidget(
                videoUrl: "https://hanim.netlify.app/assets/videos/firstvideo.mp4"),
            SizedBox(
              height: 10,
            ),
            fullVideoComponentWidget(
                videoUrl: "https://firebasestorage.googleapis.com/v0/b/promoteuganda-f8261.appspot.com/o/IPFS%20File%20Uploads%20With%20Ethereum%20Smart%20Contracts%20%C2%B7%20%231%20IPFS%20Image%20Storage%20DApp%20Tutorial.mp4?alt=media&token=7b434ce1-4efb-4bcf-a738-98c5ec5357b7"),
            SizedBox(
              height: 10,
            ),
            fullVideoComponentWidget(
                videoUrl: "https://firebasestorage.googleapis.com/v0/b/promoteuganda-f8261.appspot.com/o/Promote%20Uganda-%20Attracting%20Youth%20to%20Agriculture-%20NBS%20Breakfast%20Meeting.mp4?alt=media&token=f43e682f-b653-42e7-9752-f74f0e6b8dd3"),
                SizedBox(height: 30,),
            SizedBox(
              height: 10,
            ),
            fullVideoComponentWidget(
              videoUrl: "https://firebasestorage.googleapis.com/v0/b/promoteuganda-f8261.appspot.com/o/They%20made%20%241M%20off%20a%20meme%20coin%20-%20Steal%20their%20strategy.mp4?alt=media&token=144ca5a3-99b4-4c6e-9066-68b1e5f4e91c"),
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
