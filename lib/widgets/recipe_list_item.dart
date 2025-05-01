import 'dart:io';

import 'package:flutter/material.dart';
import 'package:lab2/app_theme.dart';
import 'package:lab2/model/recipe_database/recipe.dart';
import 'package:lab2/util/cuisine.dart';
import 'package:lab2/util/difficulty.dart';
import 'package:lab2/util/main_ingredient.dart';

class RecipeListItem extends StatelessWidget {
  const RecipeListItem(this.recipe, {required this.onTap, super.key});

  final Recipe recipe;
  final void Function() onTap;
  Widget _image(recipe) {
  var square = ClipRect(
    child: Container(
      width: 104, // Square width
      height: 104, // Square height
      child: FittedBox(fit: BoxFit.cover, child: recipe.image),
    ),
  );
  var flagImage = Cuisine.flag(recipe.cuisine, width: 24.0);
  
  return Stack(
    children: [square, Positioned(bottom: 8, right: 8, child: flagImage!)],
  );
 }

  

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Container(
        height: 128,
        child: Row(
          children: [
          _image(recipe),
          Expanded(
            child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(recipe.name, style: AppTheme.mediumHeading),
                Text(
                  recipe.description,
                  overflow: TextOverflow.ellipsis, 
                  maxLines: 2,
                ),
                Row(
                  children: [Image(image: MainIngredient.icon(recipe.mainIngredient, width: 5)!.image), Image(image: Difficulty.icon(recipe.difficulty, width: 5)!.image), Text("${recipe.time.toString()} minuter     "), Text("${recipe.price.toString()}Kr")]),
              ],
            ),
          ),
        ],
      ),
      ),
    );
  }
}