import 'package:flutter/material.dart';
import 'package:promote_uganda/routes/promote_tv_screen/widgets/promote_tv_screen_widgets.dart';


//ignore:camel_case_types
class promoteTvScreen extends StatelessWidget{
  const promoteTvScreen({super.key});


  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(

        title: const Text(
          "Promote Tv",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.black,
            fontSize: 18
          ),),

        leading: IconButton(
          onPressed: ()=> Navigator.pop(context), 
          icon: const Icon(Icons.arrow_back)),

          actions: [
            IconButton(
              onPressed: (){}, 
              icon: const Icon(Icons.notifications)),

            IconButton(
              onPressed: (){}, 
              icon: const Icon(Icons.search)),
          ],
      ),

      body: const SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: promoteTvChipsWidget(),),

              SizedBox(height: 20,),

              adsWidget(
                briefInfo: "Food at your doorstep just one click"
                            "away | Delivery and more.\n"
                            "You can now order using Jumia food "
                            "from your favourite restaurants", 
                imgUrl: "assets/images/city.jpg", 
                rating: "4.4"),


                SizedBox(height: 20,),
                videoWidget(videoUrl: "https://youtu.be/bPv5pb7AcYs?si=ImaH58T9jC3MskK_"),

                SizedBox(height: 10,),
                videoWidget(videoUrl: "https://youtu.be/-rfEYd4NGQg?si=2CRGphiEtaqW-p6K"),

                SizedBox(height: 10,),
                videoWidget(videoUrl: "https://youtu.be/yUTNTL_Qku0?si=WDlRfl4cAJxeBYUB"),
            ],

            
          ),
        )),
    );
  }

}