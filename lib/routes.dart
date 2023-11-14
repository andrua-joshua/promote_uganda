import 'package:flutter/material.dart';
import 'package:promote_uganda/routes/Hotels_and_booking/hotel_rooms_screen/hotel_rooms_screen.dart';
import 'package:promote_uganda/routes/Hotels_and_booking/hotels_booking_screen/hotels_booking_screen.dart';
import 'package:promote_uganda/routes/edit_profile_screen/edit_profile_screen.dart';
import 'package:promote_uganda/routes/home_screen/home_screen.dart';
import 'package:promote_uganda/routes/profile_screen/profile_screen.dart';
import 'package:promote_uganda/routes/promote_tv_screen/promote_tv_screen.dart';
import 'package:promote_uganda/routes/shopping/shopping_cart_screen/shopping_cart_screen.dart';
import 'package:promote_uganda/routes/shopping/shopping_start_screen/shopping_home_screen.dart';
import 'package:promote_uganda/routes/shopping/shopping_start_screen/shopping_start_screen.dart';
import 'package:promote_uganda/routes/shopping/shopping_view_item_screen/shopping_view_item_screen.dart';
import 'package:promote_uganda/routes/sign_in_screen/sign_in_screen.dart';
import 'package:promote_uganda/routes/sign_up_screen/sign_up_screen.dart';
import 'package:promote_uganda/routes/travel_explore/travel_and-explore_cat_screen/travel_and_explore_cat.dart';
import 'package:promote_uganda/routes/travel_explore/travel_and_explorer_gallery_screen/travel_and_explore_gallery_screen.dart';
import 'package:promote_uganda/routes/travel_explore/travel_explore_details_screen/travel_explore_details_screen.dart';

class RouteGenerator {
  static const homescreen = "/";
  static const String hotelbookingscreen = "/hoteldetailscreen";
  static const String shopItemviewscreen = "/shopItemsdetailsscreen";
  static const String shophomescreen = "/shopHomeScreen";
  static const String exploreCatdetailsscreen = "/exploreCatdetailsscreen";
  static const String exploreCatscreen = "/exploreCatscreen";
  static const String promotetvscreen = "/promotetvscreen";
  static const String profilescreen = "/profilescreen";
  static const String signinscreen = "/signInScreen";
  static const String signupscreen = "/signupscreen";
  static const String shoppingcartscreen = "/shoppingcartscreen";
  static const String editprofilescreen = "/editprofilescreen";
  static const String hotelroomsscreen = "/hotelroomsscreen";
  static const String galleryscreen = "/galleryscreen";



  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case homescreen:
        return MaterialPageRoute(builder: (context) => const homeScreen());
      case hotelbookingscreen:
        return MaterialPageRoute(
            builder: (context) => const hotelsBookingScreen());
      case shopItemviewscreen:
        return MaterialPageRoute(
            builder: (context) => const shoppingItemViewScreen());
      case shophomescreen:
        return MaterialPageRoute(
            builder: (context) => const shoppingHomeScreen());
      case exploreCatscreen:
        return MaterialPageRoute(builder: (context) {
          //String arg = settings.arguments as String;
          return const travelAndExploreCatScreen(
            category: "Mountains",
          );
        });
      case exploreCatdetailsscreen:
        return MaterialPageRoute(
            builder: (context) => const travelExploreDetailsScreen());

      case promotetvscreen:
        return MaterialPageRoute(
            builder: (context) => const promoteTvScreen());

      case profilescreen:
        return MaterialPageRoute(
            builder: (context) => const profileScreen());

      case signinscreen:
        return MaterialPageRoute(
            builder: (context) => const signInScreen());

      case signupscreen:
        return MaterialPageRoute(
            builder: (context) => const signUpScreen());

      case shoppingcartscreen:
        return MaterialPageRoute(
            builder: (context) => const shoppingCartScreen());

      case editprofilescreen:
        return MaterialPageRoute(
            builder: (context) => const editProfileScreen());

      case hotelroomsscreen:
        return MaterialPageRoute(
            builder: (context) => const hotelRoomsScreen());

      case galleryscreen:
        return MaterialPageRoute(
            builder: (context) => const galleryScreen());

      default:
        return MaterialPageRoute(builder: (context) => const homeScreen());
    }
  }
}
