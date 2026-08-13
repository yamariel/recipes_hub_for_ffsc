import '../models/recipe.dart';

class RecipeFilter {
  List<Recipe> filter({
    required List<Recipe> recipes,
    required String searchQuery,
    required String selectedCategory,
  }) {
    return recipes.where((recipe) {
      final matchesSearch = recipe.title.toLowerCase().contains(
        searchQuery.toLowerCase(),
      );

      final matchesCategory =
          selectedCategory == 'Toutes' || recipe.category == selectedCategory;

      return matchesSearch && matchesCategory;
    }).toList();
  }
}
