import 'package:flutter/material.dart';

class CustomPrimaryButton extends StatelessWidget {
  final String textButton;
  void Function() onPressed;

  CustomPrimaryButton(
      {super.key, required this.textButton, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SizedBox(
        height: size.height * 0.05,
        width: size.width * 0.75,
        child: ElevatedButton(
          onPressed: onPressed,
          style: ElevatedButton.styleFrom(shape: const StadiumBorder()),
          child: Text(textButton),
        ));
  }
}
