import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../data/recipe_data.dart';
import '../models/recipe.dart';
import '../services/recipe_filter.dart';
import '../widgets/recipe_card.dart';
import '../widgets/search_bar.dart';
import '../widgets/category_chip.dart';

class RecipesScreen extends StatefulWidget {
  const RecipesScreen({super.key});

  @override
  State<RecipesScreen> createState() => _RecipesScreenState();
}

class _RecipesScreenState extends State<RecipesScreen> {
  String searchQuery = '';
  String selectedCategory = 'Toutes';

  List<Recipe> get filteredRecipes {
    final filter = RecipeFilter();
    return filter.filter(
      recipes: recipes,
      searchQuery: searchQuery,
      selectedCategory: selectedCategory,
    );
  }

  @override
  Widget build(BuildContext context) {
    final categories = [
      'Toutes',
      ...recipes.map((recipe) => recipe.category).toSet(),
    ];
    final width = MediaQuery.of(context).size.width;
    final crossAxisCount = width >= 900
        ? 4
        : width >= 600
        ? 3
        : 2;

    return Scaffold(
      appBar: AppBar(title: Text("Toutes les recettes")),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16),
            child: SearchbarWidget(
              onChanged: (value) {
                setState(() {
                  searchQuery = value;
                });
              },
            ),
          ),
          SizedBox(
            height: 45,
            child: ListView.builder(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              scrollDirection: Axis.horizontal,
              itemCount: categories.length,
              itemBuilder: (context, index) {
                final category = categories[index];
                return CategoryChip(
                  label: category,
                  selected: category == selectedCategory,
                  onSelected: () {
                    setState(() {
                      selectedCategory = category;
                    });
                  },
                );
              },
            ),
          ),
          const SizedBox(height: 16),
          Expanded(
            child: filteredRecipes.isEmpty
                ? const Center(child: Text("'Aucune recette trouvée"))
                : GridView.builder(
                    padding: const EdgeInsets.all(16),
                    itemCount: filteredRecipes.length,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: crossAxisCount,
                      childAspectRatio: 0.75,
                      crossAxisSpacing: 24,
                      mainAxisSpacing: 30,
                    ),
                    itemBuilder: (context, index) {
                      final recipe = filteredRecipes[index];
                      return RecipeCard(
                        recipe: recipe,
                        onTap: () {
                          context.push('/recipe', extra: recipe);
                        },
                      );
                    },
                  ),
          ),
        ],
      ),
    );
  }
}
