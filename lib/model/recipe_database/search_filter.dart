import 'package:lab2/model/recipe_database/recipe.dart';

class SearchFilter {
  String? difficulty;
  int maxTime = 0;
  String? cuisine;
  int maxPrice = 0;
  String? mainIngredient;
  String? name;

  SearchFilter(
    this.difficulty,
    this.maxTime,
    this.cuisine,
    this.maxPrice,
    this.mainIngredient,
    this.name,
  );

  SearchFilter.withoutName(
    this.difficulty,
    this.maxTime,
    this.cuisine,
    this.maxPrice,
    this.mainIngredient,
  );

  @override
  bool operator ==(Object other) {
    if (other is! SearchFilter) return false;
    if (name == null) {
      return other.name == null;
    } else {
      return name == other.name;
    }
  }

  @override
  int get hashCode {
    return (name != null ? name.hashCode : 0) ^ 5;
  }

  int matchAgainstRecipe(Recipe recipe) {
    int numberOfFilters = 0;
    int numberOfMatches = 0;

    if (difficulty != null) {
      numberOfFilters++;
      if (difficulty == recipe.difficulty) {
        numberOfMatches++;
      }
    }

    if (maxTime > 0) {
      numberOfFilters++;
      if (maxTime >= recipe.time) {
        numberOfMatches++;
      }
    }

    if (cuisine != null) {
      numberOfFilters++;
      if (cuisine == recipe.cuisine) {
        numberOfMatches++;
      }
    }

    if (maxPrice > 0) {
      numberOfFilters++;
      if (maxPrice >= recipe.price) {
        numberOfMatches++;
      }
    }

    if (mainIngredient != null) {
      numberOfFilters++;
      if (mainIngredient == recipe.mainIngredient) {
        numberOfMatches++;
      }
    }

    return (numberOfFilters > 0)
        ? ((numberOfMatches / numberOfFilters) * 100).toInt()
        : 0;
  }
}
