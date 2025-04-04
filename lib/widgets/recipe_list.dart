import 'package:flutter/material.dart';
import 'package:lab2/model/recipe_database/recipe_handler.dart';
import 'package:provider/provider.dart';

class RecipeList extends StatelessWidget {
  const RecipeList({super.key});

  @override
  Widget build(BuildContext context) {
    var recipeHandler = context.watch<RecipeHandler>();
    var recipes = recipeHandler.bestMatches;

    return ListView.builder(
      itemCount: recipes.length,
      itemBuilder: (context, index) {
        final recipe = recipes[index];
        return ListTile(
          title: Text(recipe.name),
          subtitle: Text(recipe.description ?? ''),
          leading: recipe.imagePath != null 
              ? Image.network(recipe.imagePath) 
              : const Icon(Icons.fastfood),
          onTap: () {
            // Här kan du lägga till navigation till receptdetaljer om du vill
          },
        );
      },
    );
  }
}