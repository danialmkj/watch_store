import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:watchstore/resources/dimens.dart';
import 'package:watchstore/utils/extenstions/extenstion.dart';

class CustomCategoryWidget extends StatelessWidget {
  const CustomCategoryWidget({
    super.key,
    required this.colors,
    required this.categoryName,
    required this.imagePath,
    required this.onTap,
  });

  final List<Color> colors;
  final String categoryName;
  final String imagePath;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Column(
      children: [
        GestureDetector(
          onTap: onTap,
          child: Container(
            height: size.height * .08,
            width: size.width * .16,
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: colors),
                borderRadius: BorderRadius.circular(Dimens.large)),
            child: SvgPicture.asset(
              imagePath,
            ),
          ),
        ),
        Dimens.medium.height,
        Text(categoryName)
      ],
    );
  }
}
