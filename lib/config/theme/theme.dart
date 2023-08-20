import 'package:flutter/material.dart';
import 'package:watchstore/resources/colors.dart';
import 'package:watchstore/resources/dimens.dart';

ThemeData lightTheme() {
  return ThemeData(
      brightness: Brightness.light,
      iconTheme: const IconThemeData(color: Colors.black),
      primaryColor: AppColors.primaryColor,
      scaffoldBackgroundColor: Colors.white,
      inputDecorationTheme: InputDecorationTheme(
          filled: true,
          fillColor: MaterialStateColor.resolveWith((states) =>
              states.contains(MaterialState.focused)
                  ? Colors.white
                  : AppColors.borderColor),
          contentPadding: const EdgeInsets.all(Dimens.medium),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(Dimens.medium),
              borderSide: const BorderSide(color: Colors.white)),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(Dimens.medium),
              borderSide: const BorderSide(color: AppColors.primaryColor))));
}
