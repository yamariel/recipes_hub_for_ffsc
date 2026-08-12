import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../widgets/recipe_card.dart';
import '../data/recipe_data.dart';
import '../main.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final popularRecipes = recipes.take(3);
    return Scaffold(
      appBar: AppBar(
        title: Text("RecipeHub",
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {
              themeNotifier.value =
              themeNotifier.value == ThemeMode.light
                  ? ThemeMode.dark
                  : ThemeMode.light;
            },
            icon: Icon(
              themeNotifier.value == ThemeMode.light
                  ? Icons.dark_mode
                  : Icons.light_mode,
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Bienvenue sur Recipe Hub !',
                style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 10),
              Text(
                'Découvrez de délicieuses recettes et trouvez '
                'l’inspiration pour vos prochains repas.',
                style: Theme.of(context).textTheme.bodyLarge,
              ),
              const SizedBox(height: 20),
              Wrap(
                spacing: 15,
                runSpacing: 10,
                children: [
                  ElevatedButton.icon(
                    onPressed: () {
                      context.push('/recipes');
                    },
                    label: const Text('Voir les recettes'),
                    icon: const Icon(Icons.restaurant_menu),
                  ),
                  ElevatedButton.icon(
                    onPressed: () {
                      context.push('/add-recipe');
                    },
                    label: const Text('Ajouter une recette'),
                    icon: const Icon(Icons.add),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Text(
                'Top 3 des recettes populaires',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                )
              ),
              const SizedBox(height: 10),
              ...popularRecipes.map(
                (recipe) => Padding(
                  padding: const EdgeInsets.all(10),
                  child: RecipeCard(
                      recipe: recipe,
                    onTap: () {
                        context.push('/recipe', extra: recipe);
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
