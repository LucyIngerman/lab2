import 'package:flutter/material.dart';
import 'package:lab2/model/recipe_database/recipe_handler.dart';
import 'package:lab2/util/cuisine.dart';
import 'package:provider/provider.dart';

class KitchenControl extends StatelessWidget{
  const KitchenControl({super.key});

  @override
  Widget build(BuildContext context) {
    var recipeHandler = Provider.of<RecipeHandler>(context, listen: false);
    const labels = Cuisine.labels;

    return DropdownMenu<String>(
      width: 164,
      enableFilter: false,      // Disables filtering (prevents typing)
      requestFocusOnTap: false, // Prevents keyboard from opening
      initialSelection: labels[0],  // Starts with the first element selected
      dropdownMenuEntries: [
        for (int i = 0; i < labels.length; i++)
           DropdownMenuEntry(
           value: labels[i],
           label: labels[i],
        ),
      ],
      onSelected: (value){
        recipeHandler.setCuisine(value);
      },
    );
  }
}