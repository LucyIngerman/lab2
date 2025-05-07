import 'package:flutter/material.dart';
import 'package:lab2/app_theme.dart';
import 'package:lab2/ui_controller.dart';
import 'package:lab2/widgets/recipe_detail.dart';
import 'package:lab2/widgets/recipe_list.dart';
import 'package:provider/provider.dart';

class RecipeArea extends StatelessWidget {
  const RecipeArea({super.key});

  @override
  Widget build(BuildContext context) {
    var uiController = context.watch<UIController>();
    Widget contents;

    if (uiController.showRecipeList) {
       contents = RecipeList();
    } else {
       contents = RecipeDetail(uiController.selectedRecipe!);
    }
    return Expanded(
      child: Padding(
        padding:  EdgeInsets.only(top: AppTheme.paddingSmall),
        child: contents,
      )
    );
  }
}