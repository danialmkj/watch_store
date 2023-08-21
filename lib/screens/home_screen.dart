import 'package:flutter/material.dart';

import 'list_product_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      body: Center(
        child: TextButton(
            onPressed: () => 
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ProductScreen(),
                )),
            child: Text('Nestd Screen')),
      ),
    );
  }
}