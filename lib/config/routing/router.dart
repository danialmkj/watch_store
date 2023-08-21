import 'package:flutter/material.dart';
import 'package:watchstore/config/routing/route_path.dart';
import 'package:watchstore/screens/basket_screen.dart';
import 'package:watchstore/screens/get_otp_screen.dart';
import 'package:watchstore/screens/home_screen.dart';
import 'package:watchstore/screens/main_wrapper.dart';
import 'package:watchstore/screens/profile_screen.dart';
import 'package:watchstore/screens/register_screen.dart';
import 'package:watchstore/screens/send_otp_screen.dart';

Map<String, Widget Function(BuildContext context)> routes = {

  RoutePath.mainRoute :(context) => const SendOtpScreen(),
  RoutePath.getOtpScreen :(context) => const GetOtpScreen(),
  RoutePath.registerScreen :(context) => const RegisterScreen(),
  RoutePath.mainWrapper :(context) => const MainWrapper(),
  RoutePath.homeScreen :(context) => const HomeScreen(),
  RoutePath.basketScreen :(context) => const BasketScreen(),
  RoutePath.profileScreen :(context) => const ProfileScreen(),
};
