import 'package:flutter/material.dart';

import 'package:lab2/constants/assets.dart';

class MainIngredient {
  static const showAll = 'Visa alla';
  static const meat = 'Kött';
  static const fish = 'Fisk';
  static const chicken = 'Kyckling';
  static const vegetarian = 'Vegetarisk';

  static const List<String> labels = [showAll, meat, fish, chicken, vegetarian];

  static final List<Image?> icons = [
    null,
    Image.asset(width: 16, Assets.meatIcon),
    Image.asset(width: 16, Assets.fishIcon),
    Image.asset(width: 16, Assets.chickenIcon),
    Image.asset(width: 16, Assets.vegIcon),
  ];

  static Image? icon(String ingredient, {double width = 16}) {
    var assetName = '';

    switch (ingredient) {
      case meat:
        assetName = Assets.meatIcon;
      case fish:
        assetName = Assets.fishIcon;
      case chicken:
        assetName = Assets.chickenIcon;
      case vegetarian:
        assetName = Assets.vegIcon;
    }
    return Image.asset(assetName, width: width);
  }
}
