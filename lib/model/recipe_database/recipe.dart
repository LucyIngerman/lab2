import 'package:flutter/material.dart';
import 'package:lab2/model/recipe_database/ingredient.dart';

class Recipe {
  final String name;
  final int servings;
  final String difficulty;
  final int time;
  final String cuisine;
  final int price;
  final String mainIngredient;
  final String instruction;
  final String description;
  final String imagePath;
  final List<Ingredient> ingredients;

  Image? _image;
  int match = 0;

  static const _kName = 'name';
  static const _kServings = 'servings'; //int
  static const _kDifficulty = 'difficulty';
  static const _kTime = 'time'; //int
  static const _kCuisine = 'cuisine';
  static const _kPrice = 'price'; //int
  static const _kMainIngredient = 'mainIngredient';
  static const _kInstruction = 'instruction';
  static const _kDescription = 'description';
  static const _kImagePath = 'imagePath';
  static const _kIngredients = 'ingredients';

  Recipe(
    this.name,
    this.servings,
    this.difficulty,
    this.time,
    this.cuisine,
    this.price,
    this.mainIngredient,
    this.instruction,
    this.description,
    this.imagePath,
    this.ingredients,
  );

  factory Recipe.fromJson(Map<String, dynamic> json) {
    String name = json[_kName] as String;
    int servings = json[_kServings] as int;
    String difficulty = json[_kDifficulty] as String;
    int time = json[_kTime] as int;
    String cuisine = json[_kCuisine] as String;
    int price = json[_kPrice] as int;
    String mainIngredient = json[_kMainIngredient] as String;
    String instruction = json[_kInstruction] as String;
    String description = json[_kDescription] as String;
    String imagePath = json[_kImagePath] as String;
    List jsonIngredients = json[_kIngredients];

    List<Ingredient> ingredients = [];

    for (int i = 0; i < jsonIngredients.length; i++) {
      Ingredient ingredient = Ingredient.fromJson(jsonIngredients[i]);
      ingredients.add(ingredient);
    }
    return Recipe(
      name,
      servings,
      difficulty,
      time,
      cuisine,
      price,
      mainIngredient,
      instruction,
      description,
      imagePath,
      ingredients,
    );
  }

  Image get image {
    String path = 'assets/recipes/';

    if (_image == null) {
      path = path + imagePath;
      _image = Image.asset(path);
    }
    return _image!;
  }

  Image customImage({double width = 56, height = 56, BoxFit? fit}) {
    String path = 'assets/recipes/';

    path = path + imagePath;
    return Image.asset(path, width: width, height: height, fit: fit);
  }
}
