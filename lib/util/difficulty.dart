import 'package:flutter/material.dart';
import 'package:lab2/constants/assets.dart';

class Difficulty {
  static const showAll = 'Alla';
  static const easy = 'Lätt';
  static const medium = 'Mellan';
  static const hard = 'Svår';

  static const labels = [showAll, easy, medium, hard];

  static final List<Image?> icons = [
    null,
    Image.asset(height: 16, Assets.difficultyEasy),
    Image.asset(height: 16, Assets.difficultyMedium),
    Image.asset(height: 16, Assets.difficultyHard),
  ];

  static Image? icon(String difficulty, {double width = 16}) {
    var assetName = '';

    switch (difficulty) {
      case easy:
        assetName = Assets.difficultyEasy;
      case medium:
        assetName = Assets.difficultyMedium;
      case hard:
        assetName = Assets.difficultyHard;
    }
    return Image.asset(assetName, width: width);
  }
}
