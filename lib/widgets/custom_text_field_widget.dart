import 'package:flutter/material.dart';
import 'package:watchstore/resources/colors.dart';
import 'package:watchstore/resources/dimens.dart';
import 'package:watchstore/utils/extenstions/sizedbox_extenstion.dart';

class CustomTextFieldWidget extends StatelessWidget {
  const CustomTextFieldWidget(
      {super.key,
      required this.lable,
      required this.hint,
      required this.controller,
      this.icon = const SizedBox()});

  final String lable;
  final String hint;
  final Widget icon;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(Dimens.medium),
      child: Column(
        children: [
          Text(
            lable,
            style: const TextStyle(color: AppColors.title),
          ),
          Dimens.medium.height,
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.07,
            width: MediaQuery.of(context).size.width * 0.75,
            child: TextField(
              controller: controller,
              textAlign: TextAlign.center,
              decoration: InputDecoration(hintText: hint, prefixIcon: icon),
            ),
          ),
        ],
      ),
    );
  }
}
