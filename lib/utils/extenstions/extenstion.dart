import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

extension CustomSizedBox on num {
  SizedBox get height => SizedBox(height: toDouble());
  SizedBox get width => SizedBox(width: toDouble());
}

// toman price
extension CustomIranCurrency on int {
  String get convertPriceByDigit {
    final numberFormat = NumberFormat.decimalPattern();
    return numberFormat.format(this);
  }
}
