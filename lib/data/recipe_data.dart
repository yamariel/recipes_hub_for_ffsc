import '../models/recipe.dart';

final List<Recipe> recipes = [
  Recipe(
    id: 1,
    title: 'Pizza Margherita',
    description: 'Une pizza italienne classique à la tomate et mozzarella.',
    category: 'Plats',
    image: 'https://picsum.photos/200/300',
    preparationTime: 30,
    ingredients: [
      'Farine',
      'Tomates',
      'Mozzarella',
      'Basilic',
    ],
  ),

  Recipe(
    id: 2,
    title: 'Salade César',
    description: 'Une salade fraîche avec poulet, salade et sauce César.',
    category: 'Salades',
    image: 'https://picsum.photos/200/300',
    preparationTime: 20,
    ingredients: [
      'Salade',
      'Poulet',
      'Parmesan',
      'Sauce César',
    ],
  ),

  Recipe(
    id: 3,
    title: 'Tiramisu',
    description: 'Un dessert italien crémeux au café et mascarpone.',
    category: 'Desserts',
    image: 'https://picsum.photos/200/300',
    preparationTime: 40,
    ingredients: [
      'Mascarpone',
      'Café',
      'Biscuits',
      'Cacao',
    ],
  ),
];