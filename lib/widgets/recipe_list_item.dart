import 'package:flutter/material.dart';
import 'package:lab2/model/recipe_database/recipe.dart';

class RecipeListItem extends StatelessWidget {
  const RecipeListItem(this.recipe, {required this.onTap, super.key});

  final Recipe recipe;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: recipe.image,
      title: Text(recipe.name),
      onTap: onTap,
      shape: Border.all(),
  );
  }
}