import 'package:flutter/material.dart';
import 'package:watchstore/resources/colors.dart';
import 'package:watchstore/resources/dimens.dart';
import 'package:watchstore/widgets/custom_product_item.dart';
import 'package:watchstore/widgets/custom_vertical_text.dart';

class ProductItemList extends StatelessWidget {
  const ProductItemList({
    super.key,
    this.hasDiscount = false,
  });

  final bool hasDiscount;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      reverse: true,
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          SizedBox(
            height: hasDiscount ? 270 : 230,
            child: ListView.builder(
                //reverse: true,
                scrollDirection: Axis.horizontal,
                physics: const ClampingScrollPhysics(),
                itemCount: 8,
                shrinkWrap: true,
                itemBuilder: (context, index) => Container(
                      height: hasDiscount ? 260 : 230,
                      width: 150,
                      margin: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(Dimens.medium),
                          gradient: const LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: AppColors.listGradientColors)),
                      child: const CustomProductItem(
                        productName: 'ساعت مردانه',
                      ),
                    )),
          ),
          const CustomVerticalText()
        ],
      ),
    );
  }
}
