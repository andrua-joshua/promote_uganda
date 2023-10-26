import 'package:flutter/material.dart';
import 'package:promote_uganda/routes/Hotels_and_booking/hotels_booking_screen/widgets/hotels_booking_screen_widgets.dart';

//ignore:camel_case_types
class hotelsBookingScreen extends StatelessWidget {
  const hotelsBookingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      //appBar: AppBar(),

      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 0, vertical: 5),
          child: Column(
            children: [
              Expanded(
                  child: SingleChildScrollView(
                child: Column(
                  children: [
                    bookingTopWidget(
                        hotelName: "Jokas Hotel",
                        hotelLocation: "Bweyogerere",
                        imgsUrl: [
                          "assets/images/landscape.jpg",
                          "assets/images/mountUg.jpg",
                          "assets/images/gameparks.jpg",
                        ]),
                        SizedBox(height: 10,),

                        Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: 10
                          ),
                          child: servicesWidget(
                        isBreakeFast: false, 
                        isLaunch: false, 
                        isWifiService: false),),

                        SizedBox(height: 20,),
                       Padding(
                        padding: EdgeInsets.symmetric(horizontal: 15), 
                        child:descriptionWidget(
                          pricePerNight: 234,
                          topTitle: "Description", 
                          description: "Tggsd f hsbusdgbfuvvinbjh df hg fhjfsdf shfjhfgsh"
                          "uis jsg snfsdfs jkv nffghdv jhgdfbvfgvdduybv ndf rvjhh brhg gtrg "
                          "hk nf jhhfjkg fgbdgdfkg dhgdgkdfg dnbgjgdn hggdfhgdb jhddgjdgndd"
                          "uis jsg snfsdfs jkv nffghdv jhgdfbvfgvdduybv ndf rvjhh brhg gtrg "
                          "hk nf jhhfjkg fgbdgdfkg dhgdgkdfg dnbgjgdn hggdfhgdb jhddgjdgndd"
                          "uis jsg snfsdfs jkv nffghdv jhgdfbvfgvdduybv ndf rvjhh brhg gtrg "
                          "hk nf jhhfjkg fgbdgdfkg dhgdgkdfg dnbgjgdn hggdfhgdb jhddgjdgndd")),


                  ],
                ),
              )),

              SizedBox(
                child: bookingBtnWidget(),
              )
            ],
          ),
        ),
      ),
    );
  }
}
