import 'package:flutter/material.dart';
import 'package:promote_uganda/state_managers/hotel_images_switch_manager.dart';
import 'package:provider/provider.dart';

//ignore:camel_case_types
class bookingTopWidget extends StatelessWidget {
  final List<String> imgsUrl;
  final String hotelName;
  final String hotelLocation;
  const bookingTopWidget(
      {super.key,
      required this.hotelName,
      required this.hotelLocation,
      required this.imgsUrl});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<imgesSwitchNotifier>(
      create: (context) => imgesSwitchNotifier(),
      builder: (context, child) {
        return Card(
            elevation: 4,
            margin: const EdgeInsets.all(0),
            child: Consumer<imgesSwitchNotifier>(
              builder: (context, value, child) {
                return Container(
                  //constraints: const BoxConstraints.expand(height: 300),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                          fit: BoxFit.cover, image: AssetImage(imgsUrl[value.currentIndex]))),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      SizedBox(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            IconButton(
                                onPressed: () => Navigator.pop(context),
                                icon: Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Colors.black),
                                  padding: const EdgeInsets.all(5),
                                  child: const Icon(
                                    Icons.arrow_back,
                                    color: Colors.white,
                                    size: 20,
                                  ),
                                )),
                            Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.white),
                              padding: const EdgeInsets.all(5),
                              child: const Row(
                                children: [
                                  Icon(Icons.star,
                                      color: Colors.yellow, size: 16),
                                  Text(
                                    "4.3",
                                    style: TextStyle(),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 100,
                      ),
                      Text(
                        hotelName,
                        style: const TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      SizedBox(
                        child: Row(
                          children: [
                            const SizedBox(
                              width: 10,
                            ),
                            const Icon(
                              Icons.location_on,
                              color: Colors.red,
                            ),
                            Text(
                              hotelLocation,
                              style: const TextStyle(
                                  fontFamily: "mono",
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                  color: Colors.white),
                            )
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      SizedBox(
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: List.generate(
                                imgsUrl.length,
                                (index) => GestureDetector(
                                  onTap: ()=>value.setIndex(index),
                                  child:Container(
                                      height: 60,
                                      width: 60,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          border: Border.all(
                                              color: (index==value.currentIndex)?Colors.blue:Colors.white, 
                                              width: 2),
                                          image: DecorationImage(
                                              fit: BoxFit.cover,
                                              image:
                                                  AssetImage(imgsUrl[index]))),
                                      margin: const EdgeInsets.symmetric(
                                          horizontal: 4),
                                    ))),
                          ),
                        ),
                      )
                    ],
                  ),
                );
              },
            ));
      },
    );
  }
}

//ignore:camel_case_types
class descriptionWidget extends StatelessWidget {
  final String topTitle;
  final String description;
  final int pricePerNight;

  const descriptionWidget(
      {required this.topTitle,
      required this.description,
      required this.pricePerNight,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                topTitle,
                style: const TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color.fromARGB(255, 238, 238, 238)),
                padding: const EdgeInsets.symmetric(
                  horizontal: 10,
                ),
                child: Text(
                  "\$$pricePerNight",
                  style: const TextStyle(
                      color: Colors.orange,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
              ),
              const SizedBox()
            ],
          ),
        ),
        const Divider(
          endIndent: 260,
          color: Colors.black,
          thickness: 4,
        ),
        Text(
          description,
          style: const TextStyle(wordSpacing: 4),
        )
      ],
    );
  }
}

//ignore:camel_case_types
class bookingBtnWidget extends StatelessWidget {
  const bookingBtnWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: () {},
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10), color: Colors.black),
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
          child: const Text(
            "Book Room",
            style: TextStyle(
                color: Colors.white, fontSize: 17, fontWeight: FontWeight.bold),
          ),
        ));
  }
}

//ignore:camel_case_types
class servicesWidget extends StatelessWidget {
  final bool isWifiService;
  final bool isBreakeFast;
  final bool isLaunch;
  const servicesWidget(
      {super.key,
      required this.isBreakeFast,
      required this.isLaunch,
      required this.isWifiService});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          Card(
            elevation: 3,
            child: Padding(
              padding: EdgeInsets.all(3),
              child: Row(
                children: [Icon(Icons.wifi), Text("Wifi")],
              ),
            ),
          ),
          Card(
            elevation: 3,
            child: Padding(
              padding: EdgeInsets.all(3),
              child: Row(
                children: [Icon(Icons.lunch_dining), Text(" free Launch")],
              ),
            ),
          ),
          Card(
            elevation: 3,
            child: Padding(
              padding: EdgeInsets.all(3),
              child: Row(
                children: [
                  Icon(Icons.breakfast_dining_outlined),
                  Text("free breakfast")
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
