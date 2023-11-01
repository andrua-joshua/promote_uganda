import 'package:flutter/material.dart';
import 'package:promote_uganda/routes/Hotels_and_booking/hotels_and_booking_screen.dart';
import 'package:promote_uganda/routes/home_screen/home_tab/home_tab.dart';
import 'package:promote_uganda/routes/shopping/shopping_start_screen/shopping_start_screen.dart';
import 'package:promote_uganda/routes/travel_explore/travel_explore_home_screen.dart';
import 'package:promote_uganda/state_managers/home_state_manager.dart';
import 'package:provider/provider.dart';

//ignore:camel_case_types
class homeScreen extends StatelessWidget {
  const homeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<homeTabsNotifier>(
      create: (context) => homeTabsNotifier(),
      builder: (context, child) {
        return Scaffold(
          body: SafeArea(
            child: Consumer<homeTabsNotifier>(
              builder: (context, value, child) {
                if(value.currentIndex ==0){
                  return const homeTab();
                }else if(value.currentIndex ==1){
                  return const travelExploreHomeScreen();
                }else{
                  return const hotelsHomeScreen();
                }
              },
            )),
    
    
          bottomNavigationBar: Consumer<homeTabsNotifier>(
            builder: (context, value, child) {
              return BottomNavigationBar(
                currentIndex: value.currentIndex,
                onTap: (index) {
                  value.setIndex(index);
                },
                selectedItemColor: Colors.red,
                unselectedItemColor: Colors.black,
                items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(Icons.explore), label: "Explore & Travel"),
            BottomNavigationBarItem(
                icon: Icon(Icons.travel_explore), label: "Hotels"),
          ]);
            },
          ),
        );
      },
    );
  }
}
