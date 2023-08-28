import 'package:flutter/material.dart';
import 'package:watchstore/gen/assets.gen.dart';
import 'package:watchstore/resources/colors.dart';
import 'package:watchstore/resources/dimens.dart';
import 'package:watchstore/resources/strings.dart';
import 'package:watchstore/utils/extenstions/extenstion.dart';
import 'package:watchstore/widgets/custom_category.dart';
import 'package:watchstore/widgets/custom_search_box_widget.dart';
import 'package:watchstore/widgets/custom_slider.dart';
import 'package:watchstore/widgets/product_item_list.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              //Search Box
              CustomSearchBoxWidget(size: size),
              Dimens.large.height,
              //Slidre
              const CustomSlider(),
              Dimens.veryLarge.height,
              //Category Widget
              Wrap(
                spacing: size.width * .05,
                children: [
                  CustomCategoryWidget(
                    colors: AppColors.descktopCategoryColors,
                    categoryName: Strings.desktop,
                    imagePath: Assets.images.clasic,
                    onTap: () {},
                  ),
                  CustomCategoryWidget(
                    colors: AppColors.digitalCategoryColors,
                    categoryName: Strings.digital,
                    imagePath: Assets.images.digital,
                    onTap: () {},
                  ),
                  CustomCategoryWidget(
                    colors: AppColors.smartCategoryColors,
                    categoryName: Strings.smart,
                    imagePath: Assets.images.smart,
                    onTap: () {},
                  ),
                  CustomCategoryWidget(
                    colors: AppColors.classicCategoryColors,
                    categoryName: Strings.classic,
                    imagePath: Assets.images.clasic,
                    onTap: () {},
                  ),
                ],
              ),
              Dimens.veryLarge.height,
              //Custom ListView
              const ProductItemList(
                hasDiscount: false,
              )
            ],
          ),
        ),
      ),
    );
  }
}
