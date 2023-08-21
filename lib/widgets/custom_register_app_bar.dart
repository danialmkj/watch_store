import 'package:flutter/material.dart';
import 'package:watchstore/resources/dimens.dart';
import 'package:watchstore/resources/strings.dart';
import 'package:watchstore/resources/text_style.dart';

class CustomRegisterAppBar extends StatelessWidget implements PreferredSize {
  const CustomRegisterAppBar({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return PreferredSize(
        preferredSize: Size(size.width, size.height * 0.1),
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: Dimens.small),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
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

  @override
  // TODO: implement child
  Widget get child => throw UnimplementedError();

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(size.height * .1);
}
