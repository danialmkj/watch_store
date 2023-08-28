import 'package:flutter/material.dart';
import 'package:watchstore/config/routing/route_path.dart';
import 'package:watchstore/gen/assets.gen.dart';
import 'package:watchstore/resources/dimens.dart';
import 'package:watchstore/resources/strings.dart';
import 'package:watchstore/utils/extenstions/extenstion.dart';
import 'package:watchstore/widgets/custom_text_field_widget.dart';
import 'package:watchstore/widgets/primary_button.dart';

class SendOtpScreen extends StatelessWidget {
  const SendOtpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    TextEditingController _controller = TextEditingController();

    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(Assets.images.mainLogo.path, width: size.width),
          Dimens.large.height, // use extenstion
          CustomTextFieldWidget(
              lable: Strings.enterYourNumber,
              hint: '09*********',
              controller: _controller),
          CustomPrimaryButton(
              textButton: Strings.next,
              onPressed: () => Navigator.of(context).pushNamed(RoutePath.getOtpScreen)),
        ],
      ),
    );
  }
}
