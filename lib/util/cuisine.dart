import 'package:flutter/material.dart';
import 'package:lab2/constants/assets.dart';

class Cuisine {
  static const showAll = 'Visa alla';
  static const sweden = 'Sverige';
  static const greece = 'Greece';
  static const india = 'Indien';
  static const asia = 'Asien';
  static const africa = 'Afrika';
  static const france = 'Frankrike';

  static const labels = [showAll, sweden, greece, india, asia, africa, france];

  static final List<Image?> flags = [
    null,
    Image.asset(width: 24, Assets.flagSweden),
    Image.asset(width: 24, Assets.flagGreece),
    Image.asset(width: 24, Assets.flagIndia),
    Image.asset(width: 24, Assets.flagAsia),
    Image.asset(width: 24, Assets.flagAfrica),
    Image.asset(width: 24, Assets.flagFrance),
  ];

  static Image? flag(String cuisine, {double width = 24}) {
    var assetName = '';

    switch (cuisine) {
      case sweden:
        assetName = Assets.flagSweden;
      case greece:
        assetName = Assets.flagGreece;
      case india:
        assetName = Assets.flagIndia;
      case asia:
        assetName = Assets.flagAsia;
      case africa:
        assetName = Assets.flagAfrica;
      case france:
        assetName = Assets.flagFrance;
    }
    return Image.asset(assetName, width: width);
  }
}
