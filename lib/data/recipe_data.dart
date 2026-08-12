import '../models/recipe.dart';

final List<Recipe> recipes = [
  Recipe(
    id: 1,
    title: 'Pizza Margherita',
    description: 'Une pizza italienne classique à la tomate et mozzarella.',
    category: 'Plats',
    image: 'https://www.easypeasyfoodie.com/wp-content/uploads/2024/07/Easy-Cheese-and-Tomato-Pizza-Hero-768x768.jpg',
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
    image: 'https://www.yumelise.fr/wp-content/uploads/2023/06/salade-cesar-recette.jpg',
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
    image: 'https://www.giallozafferano.com/images/260-26067/Tiramisu_780x520_wm.jpg',
    preparationTime: 40,
    ingredients: [
      'Mascarpone',
      'Café',
      'Biscuits',
      'Cacao',
    ],
  ),
];