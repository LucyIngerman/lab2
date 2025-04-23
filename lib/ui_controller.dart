import 'package:flutter/material.dart';
import 'package:lab2/model/recipe_database/recipe.dart';

class UIController extends ChangeNotifier {
  bool _showRecipeList = true;
  Recipe? _selectedRecipe;

  bool get showRecipeList => _showRecipeList;
  Recipe? get selectedRecipe => _selectedRecipe;

  void selectRecipe(recipe) {
    _showRecipeList = false;
    _selectedRecipe = recipe;
    notifyListeners();
  }

  void deselectRecipe() {
    _showRecipeList = true;
    notifyListeners();
  }
}

