import 'package:flutter/material.dart';
import 'package:watchstore/gen/assets.gen.dart';
import 'package:watchstore/resources/dimens.dart';
import 'package:watchstore/resources/text_style.dart';
import 'package:watchstore/utils/extenstions/extenstion.dart';

class CustomProductItem extends StatelessWidget {
  const CustomProductItem({
    super.key,
    required this.productName,
    this.discount = 0,
    this.currentPrice = 900000,
    this.oldPrice = 1500000,
    this.timer = '09:18:20',
  });

  final String productName;
  final int discount;
  final int oldPrice;
  final int currentPrice;
  final String timer;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        // Image
        Image.asset(Assets.images.unnamed.path),
        Dimens.medium.height,
        //Text
        Padding(
          padding: const EdgeInsets.only(right: 6.0),
          child: Text(
            productName,
            style: CustomTextStyle.hintTextStyle.copyWith(color: Colors.black),
          ),
        ),
        Dimens.medium.height,
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          //Price + Offer
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              //Price
              Column(
                children: [
                  Row(
                    children: [
                      const Text('تومان'),
                      Dimens.small.width,
                      Text(currentPrice.convertPriceByDigit),
                    ],
                  ),
                  Visibility(
                    visible: discount == 0 ? false : true,
                    child: Text(
                      oldPrice.convertPriceByDigit,
                      style: const TextStyle(
                          decoration: TextDecoration.lineThrough),
                    ),
                  ),
                ],
              ),
              //Offer Container
              Visibility(
                visible: discount == 0 ? false : true,
                child: Container(
                  padding: const EdgeInsets.all(6),
                  decoration: BoxDecoration(
                      color: Colors.red[500],
                      borderRadius: BorderRadius.circular(10)),
                  child: Text(
                    '$discount%',
                    style: const TextStyle(color: Colors.white),
                  ),
                ),
              )
            ],
          ),
        ),
        Dimens.medium.height,
        Visibility(
          visible: discount == 0 ? false : true,
          child: const Divider(
            color: Colors.blue,
            thickness: 1.5,
          ),
        ),
        Visibility(
          visible: discount == 0 ? false : true,
          child: Center(
            child: Text(
              timer,
              style: const TextStyle(color: Colors.blue),
            ),
          ),
        )
      ],
    );
  }
}
