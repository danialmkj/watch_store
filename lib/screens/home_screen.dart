import 'package:flutter/material.dart';
import 'package:watchstore/resources/dimens.dart';
import 'package:watchstore/utils/extenstions/sizedbox_extenstion.dart';
import 'package:watchstore/widgets/custom_search_box_widget.dart';
import 'package:watchstore/widgets/custom_slider.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final List<String> imageList = [
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTjlmhRcX0BRMONdtZKb0Z7wtO_vGeUBy_hwUHJ_1QJrHSOeyd5yfpNHNJ2Jq2UIbE_Km8&usqp=CAU",
    "https://www.vectorlogo.zone/logos/golang/golang-ar21.png",
    "https://1000logos.net/wp-content/uploads/2020/09/Swift-Logo.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            //Search Box
            CustomSearchBoxWidget(size: size),
            Dimens.large.height,
            //Slidre 
            CustomSlider(imageList: imageList),
          ],
        ),
      ),
    );
  }
}
