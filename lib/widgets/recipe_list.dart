import 'package:flutter/material.dart';
import 'package:lab2/model/recipe_database/recipe_handler.dart';
import 'package:lab2/ui_controller.dart';
import 'package:lab2/widgets/recipe_list_item.dart';
import 'package:provider/provider.dart';

class RecipeList extends StatelessWidget {
  const RecipeList({super.key});

  @override
  Widget build(BuildContext context) {
    var uiController = Provider.of<UIController>(context, listen: false);

    var recipeHandler = context.watch<RecipeHandler>();
    var recipes = recipeHandler.bestMatches;

       return ListView(
      children: [
        for (final recipe in recipes)
          RecipeListItem(
            recipe,
            onTap: () {
                uiController.selectRecipe(recipe);
            }, // tom funktion som instruktionen säger
          ),
      ],
    );
  }
}