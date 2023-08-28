import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:watchstore/gen/assets.gen.dart';
import 'package:watchstore/resources/dimens.dart';
import 'package:watchstore/resources/text_style.dart';
import 'package:watchstore/utils/extenstions/extenstion.dart';

class CustomVerticalText extends StatelessWidget {
  const CustomVerticalText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return RotatedBox(
      quarterTurns: -1,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              children: [
                Transform.rotate(
                    angle: 1.5, child: SvgPicture.asset(Assets.images.back)),
                Dimens.medium.width,
                const Text('مشاهده همه'),
              ],
            ),
            Dimens.medium.height,
            const Text(
              'شگفت انگیز',
              style: CustomTextStyle.amazingTextStyle,
            )
          ],
        ),
      ),
    );
  }
}
