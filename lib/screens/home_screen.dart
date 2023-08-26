import 'package:flutter/material.dart';
import 'package:watchstore/resources/dimens.dart';
import 'package:watchstore/utils/extenstions/sizedbox_extenstion.dart';
import 'package:watchstore/widgets/custom_search_box_widget.dart';
import 'package:watchstore/widgets/custom_slider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

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
            const CustomSlider(),
          ],
        ),
      ),
    );
  }
}
