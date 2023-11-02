import 'package:flutter/material.dart';
import 'package:promote_uganda/routes.dart';
import 'package:promote_uganda/routes/Hotels_and_booking/hotels_and_booking_screen.dart';
import 'package:promote_uganda/routes/Hotels_and_booking/hotels_booking_screen/hotels_booking_screen.dart';
import 'package:promote_uganda/routes/home_screen/home_screen.dart';
import 'package:promote_uganda/routes/promote_tv_screen/promote_tv_screen.dart';
import 'package:promote_uganda/routes/shopping/shopping_start_screen/shopping_start_screen.dart';
import 'package:promote_uganda/routes/travel_explore/travel_and-explore_cat_screen/travel_and_explore_cat.dart';
import 'package:promote_uganda/routes/travel_explore/travel_explore_home_screen.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      //initialRoute: RouteGenerator.homescreen,
      //onGenerateRoute: RouteGenerator.generateRoute,
      home: const promoteTvScreen(),
    );
  }
}
