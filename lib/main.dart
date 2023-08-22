import 'package:flutter/material.dart';
import 'package:watchstore/config/routing/route_path.dart';
import 'package:watchstore/config/routing/router.dart';
import 'package:watchstore/config/theme/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Watch Store',
      theme: lightTheme(),
      //initialRoute: RoutePath.mainRoute,
      initialRoute: RoutePath.mainWrapper,
      routes: routes,
    );
  }
}
