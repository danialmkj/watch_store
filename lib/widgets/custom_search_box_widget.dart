import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:watchstore/gen/assets.gen.dart';
import 'package:watchstore/resources/dimens.dart';
import 'package:watchstore/resources/strings.dart';
import 'package:watchstore/resources/text_style.dart';

class CustomSearchBoxWidget extends StatelessWidget {
  const CustomSearchBoxWidget({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(Dimens.medium),
      margin: const EdgeInsets.fromLTRB(
          Dimens.medium, Dimens.medium, Dimens.medium, 0),
      decoration: BoxDecoration(boxShadow: const [
        BoxShadow(color: Colors.black, blurRadius: 1, offset: Offset(0, 1))
      ], color: Colors.grey[300], borderRadius: BorderRadius.circular(20)),
      height: size.height * .08,
      width: double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          SvgPicture.asset(Assets.images.search),
          const Text(
            Strings.searchProduct,
            style: CustomTextStyle.hintTextStyle,
          ),
          Image.asset(Assets.images.mainLogo.path),
        ],
      ),
    );
  }
}
