import 'package:flutter/material.dart';
import 'package:lab2/model/recipe_database/recipe_handler.dart';
import 'package:lab2/util/difficulty.dart';
import 'package:provider/provider.dart';

class DifficulyControl extends StatefulWidget {
   const DifficulyControl({super.key});

   @override
   State<DifficulyControl> createState() => _DifficulyControlState();
}

class _DifficulyControlState extends State<DifficulyControl> {
 String _difficulty = Difficulty.labels[0];
 @override

Widget build(BuildContext context) {
  var recipeHandler = Provider.of<RecipeHandler>(context, listen: false);
  return Column(
    children: [
      for (int i = 0; i < Difficulty.labels.length; i++)  
        RadioListTile<String>(
            dense: true,
            contentPadding: const EdgeInsets.only(left: 24.0),
            value: Difficulty.labels[i],
            groupValue: _difficulty,
            onChanged: (value) {
              setState(() {
                _difficulty = value!;
              });
              Provider.of<RecipeHandler>(context, listen: false).setDifficulty(value!);
            },
            title: Row(
              children: [
                if (Difficulty.icons[i] != null) ...[
                  Difficulty.icons[i]!,
                  const SizedBox(width: 8),
                ],
                Text(Difficulty.labels[i]),
              ],
            ),
          ),
      ],
  );
}
 
}

