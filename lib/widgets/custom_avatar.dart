import 'package:flutter/material.dart';
import 'package:watchstore/gen/assets.gen.dart';
import 'package:watchstore/resources/dimens.dart';
import 'package:watchstore/resources/strings.dart';
import 'package:watchstore/resources/text_style.dart';
import 'package:watchstore/utils/extenstions/sizedbox_extenstion.dart';

class CustomAvatar extends StatelessWidget {
  CustomAvatar({super.key});


  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Dimens.small.height,
        ClipRRect(
          borderRadius: BorderRadius.circular(1000),
          child: Image.asset(Assets.images.avatarPng.path),
        ),
        Dimens.medium.height,
        Text(Strings.chooseProfileImage , style: CustomTextStyle.titleTextStyle.copyWith(fontSize: 11),)
      ],
    );
  }
}
