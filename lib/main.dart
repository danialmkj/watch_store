import 'package:flutter/material.dart';
import 'package:watchstore/config/theme/theme.dart';
import 'package:watchstore/screens/get_otp_screen.dart';
import 'package:watchstore/screens/send_otp_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: lightTheme(),
      home: GetOtpScreen(),
    );
  }
}
