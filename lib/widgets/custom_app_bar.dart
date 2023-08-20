import 'package:flutter/material.dart';
import 'package:watchstore/resources/strings.dart';
import 'package:watchstore/resources/text_style.dart';

class CustomAppBarWidget extends StatelessWidget {
  const CustomAppBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return PreferredSize(
        preferredSize: Size(size.width, size.height * .1),
        child: Container(
          child: Row(
            children: [
              IconButton(
                  onPressed: () {}, icon: const Icon(Icons.arrow_back_ios)),
              const Text(
                Strings.register,
                style: CustomTextStyle.titleTextStyle,
              )
            ],
          ),
        ));
  }
}
