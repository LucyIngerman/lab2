import 'package:flutter/material.dart';

import 'package:lab2/util/main_ingredient.dart';class IngredientControl extends StatelessWidget {
  const IngredientControl({super.key});

  @override
  Widget build(BuildContext context) {

    const labels = MainIngredient.labels;

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
      onSelected: (value){},
    );
  }
}