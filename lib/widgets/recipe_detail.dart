import 'package:flutter/material.dart';
import 'package:lab2/app_theme.dart';
import 'package:lab2/model/recipe_database/recipe.dart';
import 'package:lab2/ui_controller.dart';
import 'package:lab2/util/cuisine.dart';
import 'package:lab2/util/difficulty.dart';
import 'package:lab2/util/main_ingredient.dart';
import 'package:provider/provider.dart';


class RecipeDetail extends StatelessWidget {
  const RecipeDetail(this.recipe, {super.key});

  final Recipe recipe;

  @override
  Widget build(BuildContext context) {
    var uiController = Provider.of<UIController>(context, listen: false);

    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            icon: const Icon(Icons.close),
            onPressed: () => uiController.deselectRecipe(),
          ),
        ],
      ),
      body: Container(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Vänster kolumn (bild och ingredienser)
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Bild med flagga
                    SizedBox(
                      width: 240,
                      height: 240,
                      child: Stack(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(8),
                            child: recipe.customImage(
                              width: 240,
                              height: 240,
                              fit: BoxFit.cover,
                            ),
                          ),
                          if (recipe.cuisine != Cuisine.showAll)
                            Positioned(
                              bottom: 8,
                              right: 8,
                              child: Cuisine.flag(recipe.cuisine, width: 60)!,
                            ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 16),
                    
                    // Ingredienser
                    Text(
                      'Ingredienser',
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    const SizedBox(height: 8),
                    Text('${recipe.servings} portioner'),
                    const SizedBox(height: 8),
                    ...recipe.ingredients.map((ing) => 
                      Padding(
                        padding: const EdgeInsets.only(bottom: 4),
                        child: Text('- ${ing.toString()}'),
                      ),
                    ),
                  ],
                ),

                const SizedBox(width: 16),

                // Höger kolumn (all annan information)
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(recipe.name, style: AppTheme.largeHeading),
                      const SizedBox(height: 12),
                      
                      // Förbättrad rad med större svårighetsgrad-ikon
                      Row(
                        children: [
                          // Huvudingrediens ikon
                          if (recipe.mainIngredient != MainIngredient.showAll)
                            SizedBox(child: MainIngredient.icon(recipe.mainIngredient, width: 24)),
                          if (recipe.mainIngredient != MainIngredient.showAll)
                            const SizedBox(width: 8),
                          
                          // Förstorad svårighetsgrad ikon (40px)
                          SizedBox(
                            width: 40,
                            child: Difficulty.icon(recipe.difficulty, width: 40),
                          ),
                          const SizedBox(width: 8),
                          
                          // Tid
                          const Icon(Icons.schedule, size: 24),
                          const SizedBox(width: 4),
                          Text(
                            '${recipe.time} min',
                            style: const TextStyle(fontSize: 16),
                          ),
                          const SizedBox(width: 10),
                          
                          // Pris

                          Text(
                            '${recipe.price} kr',
                            style: const TextStyle(fontSize: 16),
                          ),
                        ],
                      ),
                      
                      const SizedBox(height: 16),
                      Text(
                        recipe.description,
                        style: const TextStyle(fontSize: 16),
                      ),
                      const SizedBox(height: 24),
                      Text(
                        'Tillagning:',
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),

                      const SizedBox(height: 8),
                      Text(
                        recipe.instruction,
                        style: const TextStyle(fontSize: 13),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}