import 'package:flutter/material.dart';
import 'package:promote_uganda/routes/Hotels_and_booking/widgets/hotels_and_booking_screen_widgets.dart';


//ignore:camel_case_types
class hotelsHomeScreen extends StatelessWidget{
  const hotelsHomeScreen({super.key});

  
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
      
        title: const Text(
          "Hotels",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 17
          ),
          ),
          centerTitle: true,
      ),

      body: const SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(10),
            child: Column(
              children: [
                //SizedBox(height: ,)
                topSearchWidget(),
                SizedBox(height: 10,),
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