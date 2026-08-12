import 'package:go_router/go_router.dart';
import '../screens/home_screen.dart';
import '../models/recipe.dart';
import '../screens/add_recipe_screen.dart';
import '../screens/recipes_screen.dart';
import '../screens/recipe_detail_screen.dart';

final GoRouter appRouter = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const HomeScreen()
      ),
      GoRoute(
          path: '/recipes',
          builder: (context, state) => const RecipesScreen()
      ),
      GoRoute(
          path: '/add-recipe',
          builder: (context, state) => const AddRecipeScreen()
      ),
      GoRoute(
          path: '/recipe',
          builder: (context, state) {
            final recipe = state.extra as Recipe;
            return RecipeDetailScreen(recipe: recipe);
          }
      )
    ]
);