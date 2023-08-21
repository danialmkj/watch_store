import 'package:flutter/material.dart';
import 'package:watchstore/config/routing/route_path.dart';
import 'package:watchstore/screens/get_otp_screen.dart';
import 'package:watchstore/screens/register_screen.dart';
import 'package:watchstore/screens/send_otp_screen.dart';

Map<String, Widget Function(BuildContext context)> routes = {

  RoutePath.mainRoute :(context) => const SendOtpScreen(),
  RoutePath.getOtpScreen :(context) => const GetOtpScreen(),
  RoutePath.registerScreen :(context) => const RegisterScreen()



};
