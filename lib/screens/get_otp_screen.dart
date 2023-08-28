import 'package:flutter/material.dart';
import 'package:watchstore/gen/assets.gen.dart';
import 'package:watchstore/resources/dimens.dart';
import 'package:watchstore/resources/strings.dart';
import 'package:watchstore/resources/text_style.dart';
import 'package:watchstore/utils/extenstions/extenstion.dart';
import 'package:watchstore/widgets/custom_text_field_widget.dart';
import 'package:watchstore/widgets/primary_button.dart';

class GetOtpScreen extends StatelessWidget {
  const GetOtpScreen({super.key});

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
          Text(Strings.otpCodeSendFor.replaceAll(Strings.replace, '0912456789')),
          Dimens.small.height,
          const Text(Strings.wrongNumberEditNumber , style: CustomTextStyle.wrongNumberTextStyle,),
          Dimens.large.height, // use extenstion
          CustomTextFieldWidget(
              lable: Strings.enterVerificationCode,
              hint: Strings.hintVerificationCode,
              timer: '01 : 20',
              controller: _controller),
          CustomPrimaryButton(textButton: Strings.next, onPressed: () {}),
        ],
      ),
    );
  }
}