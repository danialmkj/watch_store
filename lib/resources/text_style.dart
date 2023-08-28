import 'package:flutter/material.dart';
import 'package:watchstore/gen/fonts.gen.dart';
import 'package:watchstore/resources/colors.dart';

class CustomTextStyle {
  CustomTextStyle._();

  static const TextStyle titleTextStyle =
      TextStyle(color: Colors.black, fontFamily: FontFamily.dana, fontSize: 14);

  static const TextStyle hintTextStyle =
      TextStyle(color: Colors.grey, fontFamily: FontFamily.dana, fontSize: 14);

  static const TextStyle wrongNumberTextStyle =
      TextStyle(color: Colors.blue, fontWeight: FontWeight.bold);

  static const TextStyle amazingTextStyle = TextStyle(
      color: AppColors.amazingColor,
      fontWeight: FontWeight.w400,
      fontSize: 22,
      fontFamily: FontFamily.dana);
}
