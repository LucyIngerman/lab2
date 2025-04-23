import 'package:flutter/material.dart';
import 'package:lab2/model/recipe_database/recipe.dart';
import 'package:lab2/ui_controller.dart';
import 'package:provider/provider.dart';



class RecipeDetail extends StatelessWidget {
  const RecipeDetail(this.recipe, {super.key});

  final Recipe recipe;
  @override
  Widget build(BuildContext context) {
    var uiController = Provider.of<UIController>(context, listen: false);

    return Column(children: [IconButton(onPressed: () {uiController.deselectRecipe();}, icon: Icon(Icons.close))]);

    // return IconButton(
    //   icon: Icon(Icons.close),
    //   onPressed: () {
    //     uiController.deselectRecipe();
    //   },
    // );
  } 
}



// class RecipeDetail extends StatelessWidget {
//   const RecipeDetail(this.recipe, {super.key});

//   final Recipe recipe;

//   @override
//   Widget build(BuildContext context) {
//     var uiController = Provider.of<UIController>(context, listen: false);

//     return IconButton(
//       icon: Icon(Icons.close),
//       onPressed: () {
//         uiController.deselectRecipe();
//       },
//     );
//   }
// }