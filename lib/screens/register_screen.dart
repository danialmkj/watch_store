import 'package:flutter/material.dart';
import 'package:watchstore/resources/dimens.dart';
import 'package:watchstore/resources/strings.dart';
import 'package:watchstore/utils/extenstions/extenstion.dart';
import 'package:watchstore/widgets/custom_avatar.dart';
import 'package:watchstore/widgets/custom_register_app_bar.dart';
import 'package:watchstore/widgets/custom_text_field_widget.dart';
import 'package:watchstore/widgets/primary_button.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController _controller = TextEditingController();
    Size size = MediaQuery.of(context).size;

    return SafeArea(
      child: Scaffold(
        appBar: CustomRegisterAppBar(size: size),
        body: SafeArea(
          child: SizedBox(
            width: double.infinity,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  CustomAvatar(),
                  CustomTextFieldWidget(
                      lable: Strings.nameLastName,
                      hint: Strings.hintNameLastName,
                      controller: _controller),
                  CustomTextFieldWidget(
                      lable: Strings.homeNumber,
                      hint: Strings.hintPhoneNumber,
                      controller: _controller),
                  CustomTextFieldWidget(
                      lable: Strings.address,
                      hint: Strings.hintAddress,
                      controller: _controller),
                  CustomTextFieldWidget(
                      lable: Strings.postalCode,
                      hint: Strings.hintPostalCode,
                      controller: _controller),
                  CustomTextFieldWidget(
                      lable: Strings.location,
                      hint: Strings.hintLocation,
                      controller: _controller,
                      icon: const Icon(Icons.location_on)),
                  Dimens.large.height,
                  CustomPrimaryButton(
                    textButton: Strings.next,
                    onPressed: () {},
                  ),
                  Dimens.veryLarge.height
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
