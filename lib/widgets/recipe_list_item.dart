import 'package:flutter/material.dart';
import 'package:lab2/model/recipe_database/recipe.dart';
import 'package:lab2/util/cuisine.dart';
import 'package:lab2/util/difficulty.dart';
import 'package:lab2/util/main_ingredient.dart';

class RecipeListItem extends StatelessWidget {
  const RecipeListItem(this.recipe, {required this.onTap, super.key});

  final Recipe recipe;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
      child: Material(
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(12),
        child: InkWell(
          borderRadius: BorderRadius.circular(12),
          splashColor: Theme.of(context).primaryColor.withAlpha(40),
          hoverColor: Theme.of(context).primaryColor.withAlpha(20),
          onTap: onTap,
          child: Container(
            height: 128,
            padding: const EdgeInsets.all(8),
            child: Row(
              children: [
                _image(recipe),
                const SizedBox(width: 12),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        recipe.name,
                        style: const TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        recipe.description,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: const TextStyle(fontSize: 14),
                      ),
                      const Spacer(),
                      Row(
                        children: [
                          SizedBox(child: MainIngredient.icon(recipe.mainIngredient, width: 24)),
                          const SizedBox(width: 8),
                          SizedBox(child: Difficulty.icon(recipe.difficulty, width: 48)),
                          const SizedBox(width: 8),
                          const Icon(Icons.schedule, size: 20),
                          const SizedBox(width: 4),
                          Text('${recipe.time} min'),
                          const SizedBox(width: 8),
                          
                          Text('${recipe.price} kr'),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _image(Recipe recipe) {
    final square = ClipRRect(
      borderRadius: BorderRadius.circular(8),
      child: SizedBox(
        width: 104,
        height: 104,
        child: FittedBox(
          fit: BoxFit.cover,
          child: recipe.image,
        ),
      ),
    );

    final flagImage = Cuisine.flag(recipe.cuisine, width: 24.0);

    return Stack(
      children: [
        square,
        if (flagImage != null)
          Positioned(bottom: 8, right: 8, child: flagImage),
      ],
    );
  }
}