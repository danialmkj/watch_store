import 'package:flutter/material.dart';
import 'package:watchstore/resources/dimens.dart';
import 'package:watchstore/resources/text_style.dart';
import 'package:watchstore/utils/extenstions/sizedbox_extenstion.dart';

class CustomTextFieldWidget extends StatelessWidget {
  const CustomTextFieldWidget({
    super.key,
    required this.lable,
    required this.hint,
    required this.controller,
    this.icon = const SizedBox(),
    this.timer = '',
  });

  final String lable;
  final String timer;
  final String hint;
  final Widget icon;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size;

    return Padding(
      padding: const EdgeInsets.all(Dimens.medium),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          SizedBox(
            width: size.width * 0.7 ,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  timer,
                  style: CustomTextStyle.titleTextStyle,
                ),
                Text(
                  lable,
                  style: CustomTextStyle.titleTextStyle,
                ),
              ],
            ),
          ),
          Dimens.medium.height,
          SizedBox(
            height: size.height * 0.07,
            width: size.width * 0.75,
            child: TextField(
              controller: controller,
              textAlign: TextAlign.center,
              decoration: InputDecoration(hintText: hint, prefixIcon: icon , hintStyle: CustomTextStyle.hintTextStyle),
            ),
          ),
        ],
      ),
    );
  }
}
