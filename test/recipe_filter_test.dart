import 'package:flutter_test/flutter_test.dart';
import 'package:recipes_hub/services/recipe_filter.dart';
import 'package:recipes_hub/models/recipe.dart';

void main() {
  test("Recherche une recette par son titre", () {
    final recipes = [
      Recipe(
        id: 1,
        title: "Pizza Margherita",
        description: "Classique",
        category: "Italien",
        image: "pizza.jpg",
        preparationTime: 30,
        ingredients: ["Pâte", "Tomate", "Mozzarella"],
      ),
      Recipe(
        id: 2,
        title: "Pâtes Carbonara",
        description: "Délicieux",
        category: "Italien",
        image: "pasta.jpg",
        preparationTime: 20,
        ingredients: ["Pâtes", "Lardons", "Crème"],
      ),
    ];

    final filterService = RecipeFilter();

    final result = filterService.filter(
      recipes: recipes,
      searchQuery: "Pizza",
      selectedCategory: "Toutes",
    );

    expect(result.length, 1);
    expect(result.first.title, "Pizza Margherita");
  });

  test("Filtrer une recette par catégorie", () {
    final recipes = [
      Recipe(
        id: 1,
        title: "Garba",
        description: "Plat ivoirien fait avec de l'attiéké",
        category: "Plats",
        image: "garba.jpg",
        preparationTime: 30,
        ingredients: ["Manioc", "Tomate", "Poisson thon"],
      ),
      Recipe(
        id: 2,
        title: " Groto",
        description: "Lait concentré avec des fruits",
        category: "Desserts",
        image: "yaout.jpg",
        preparationTime: 20,
        ingredients: ["Yaout", "Lait concentré", "Fruits"],
      ),
    ];

    final filterService = RecipeFilter();

    final result = filterService.filter(
      recipes: recipes,
      searchQuery: "",
      selectedCategory: "Plats",
    );

    expect(result.length, 1);
    expect(result.first.category, "Plats");
  });

  test("Recherche sans resultat", () {
    final recipes = [
      Recipe(
        id: 1,
        title: "Garba",
        description: "Plat ivoirien fait avec de l'attiéké",
        category: "Plats",
        image: "garba.jpg",
        preparationTime: 30,
        ingredients: ["Manioc", "Tomate", "Poisson thon"],
      ),
      Recipe(
        id: 2,
        title: " Groto",
        description: "Lait concentré avec des fruits",
        category: "Desserts",
        image: "yaout.jpg",
        preparationTime: 20,
        ingredients: ["Yaout", "Lait concentré", "Fruits"],
      ),
    ];

    final filterService = RecipeFilter();

    final result = filterService.filter(
      recipes: recipes,
      searchQuery: "Riz sauce graine",
      selectedCategory: "Toutes",
    );

    expect(result.isEmpty, true);
  });

  test("Recherche insensible à la casse", () {
    final recipes = [
      Recipe(
        id: 1,
        title: "Garba",
        description: "Plat ivoirien fait avec de l'attiéké",
        category: "Plats",
        image: "garba.jpg",
        preparationTime: 30,
        ingredients: ["Manioc", "Tomate", "Poisson thon"],
      ),
      Recipe(
        id: 2,
        title: " Groto",
        description: "Lait concentré avec des fruits",
        category: "Desserts",
        image: "yaout.jpg",
        preparationTime: 20,
        ingredients: ["Yaout", "Lait concentré", "Fruits"],
      ),
    ];

    final filterService = RecipeFilter();

    final result = filterService.filter(
      recipes: recipes,
      searchQuery: "GARBA",
      selectedCategory: "Plats",
    );

    expect(result.length, 1);
    expect(result.first.category, "Plats");
  });

  test("Afficher toutes les catégories", () {
    final recipes = [
      Recipe(
        id: 1,
        title: "Garba",
        description: "Plat ivoirien",
        category: "Plats",
        image: "garba.jpg",
        preparationTime: 30,
        ingredients: ["Manioc", "Tomate"],
      ),
      Recipe(
        id: 2,
        title: "Tiramisu",
        description: "Dessert italien",
        category: "Desserts",
        image: "tiramisu.jpg",
        preparationTime: 40,
        ingredients: ["Mascarpone", "Café"],
      ),
    ];

    final filterService = RecipeFilter();

    final result = filterService.filter(
      recipes: recipes,
      searchQuery: "",
      selectedCategory: "Toutes",
    );

    expect(result.length, 2);
  });
}
