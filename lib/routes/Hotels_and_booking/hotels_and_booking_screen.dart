import 'package:flutter/material.dart';
import 'package:promote_uganda/routes/Hotels_and_booking/widgets/hotels_and_booking_screen_widgets.dart';


//ignore:camel_case_types
class hotelsHomeScreen extends StatelessWidget{
  const hotelsHomeScreen({super.key});

  
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
      backgroundColor: Colors.red,
        automaticallyImplyLeading: false,

        title: const Text(
          "Hotels",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 17,
            color: Colors.white
          ),
          ),
          //centerTitle: true,

          actions: [

            IconButton(
              onPressed: (){}, 
              icon:const Icon(Icons.search, color: Colors.white,)),

              IconButton(
              onPressed: (){}, 
              icon:const Icon(Icons.book_outlined, color: Colors.white,))
          ],

      ),

      body: const SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //SizedBox(height: ,)
                topSearchWidget(),
                SizedBox(height: 10,),
                Text(
                  "Nearby Hotels",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15
                  ),),
                topSuggestionWidget(),
                SizedBox(height: 15,),
                filterWidget(),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  child: unitWidget(
                    hotelName: "Jokas Hotel", 
                    hotelLocation: "Namboole", 
                    price: "352",
                    imgUrl: "assets/images/gameparks.jpg"),),

                Padding(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  child: unitWidget(
                    hotelName: "Delata Hotel", 
                    hotelLocation: "Bweyogerere", 
                    price: "453",
                    imgUrl: "assets/images/gameparks.jpg"),),

                Padding(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  child: unitWidget(
                    hotelName: "Mamerito Hotel", 
                    hotelLocation: "Bweyogerere", 
                    price: "453",
                    imgUrl: "assets/images/gameparks.jpg"),),

                Padding(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  child: unitWidget(
                    hotelName: "Hotel Afrikana", 
                    hotelLocation: "Kampala", 
                    price: "453",
                    imgUrl: "assets/images/gameparks.jpg"),)
              ],
            ),),
        )),
    );
  }
}