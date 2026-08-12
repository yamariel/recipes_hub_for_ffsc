import '../models/recipe.dart';

final List<Recipe> recipes = [
  Recipe(
    id: 1,
    title: 'Pizza Margherita',
    description: 'Une pizza italienne classique à la tomate et mozzarella.',
    category: 'Plats',
    image:
        'https://www.easypeasyfoodie.com/wp-content/uploads/2024/07/Easy-Cheese-and-Tomato-Pizza-Hero-768x768.jpg',
    preparationTime: 30,
    ingredients: ['Farine', 'Tomates', 'Mozzarella', 'Basilic'],
  ),

  Recipe(
    id: 2,
    title: 'Salade César',
    description: 'Une salade fraîche avec poulet, salade et sauce César.',
    category: 'Salades',
    image:
        'https://www.yumelise.fr/wp-content/uploads/2023/06/salade-cesar-recette.jpg',
    preparationTime: 20,
    ingredients: ['Salade', 'Poulet', 'Parmesan', 'Sauce César'],
  ),

  Recipe(
    id: 3,
    title: 'Tiramisu',
    description: 'Un dessert italien crémeux au café et mascarpone.',
    category: 'Desserts',
    image:
        'https://www.giallozafferano.com/images/260-26067/Tiramisu_780x520_wm.jpg',
    preparationTime: 40,
    ingredients: ['Mascarpone', 'Café', 'Biscuits', 'Cacao'],
  ),

  Recipe(
    id: 4,
    title: 'Poulet Yassa',
    description:
        'Un délicieux plat sénégalais à base de poulet mariné, oignons et citron.',
    category: 'Plats',
    image:'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRjkV922NJxhVoh4N5RFn-INYw_Uu5P9SQ9hhpdR2cefw&s=10',
    preparationTime: 60,
    ingredients: ['Poulet', 'Oignons', 'Citron', 'Moutarde', 'Huile', 'Poivre'],
  ),

  Recipe(
    id: 5,
    title: 'Riz au poisson',
    description: 'Un plat généreux de riz accompagné de poisson et de légumes.',
    category: 'Plats',
    image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR-pKwLVQDzr7Vf7bkR0DHwYfhe2wlxA8w-PFcRFHgV4hrd-fWOmEj0FPYR&s=10',
    preparationTime: 75,
    ingredients: ['Riz', 'Poisson', 'Carottes', 'Chou', 'Tomates', 'Oignons'],
  ),

  Recipe(
    id: 6,
    title: 'Spaghetti Bolognaise',
    description:
        'Des spaghetti accompagnés d’une sauce tomate à la viande hachée.',
    category: 'Plats',
    image: 'https://assets.tmecosys.com/image/upload/t_web_rdp_recipe_584x480/img/recipe/ras/Assets/d1b38708de15e20816113dc7c447ab99/Derivates/ec6fc73eebdb27d2cd1c927c8a3a82b945d39f18.jpg',
    preparationTime: 35,
    ingredients: [
      'Spaghetti',
      'Viande hachée',
      'Tomates',
      'Oignons',
      'Ail',
      'Parmesan',
    ],
  ),

  Recipe(
    id: 7,
    title: 'Poulet braisé',
    description:
        'Du poulet mariné puis grillé avec une sauce épicée et savoureuse.',
    category: 'Plats',
    image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTxmsw6sPMIyQzmg0QxrOitBEJs5LqYB7xjtdSHcpNNn6xQ2uSdEwM2CPA&s=10',
    preparationTime: 50,
    ingredients: ['Poulet', 'Oignons', 'Ail', 'Poivron', 'Épices', 'Huile'],
  ),

  Recipe(
    id: 8,
    title: 'Lasagnes à la viande',
    description:
        'Des couches de pâtes, de viande, de sauce tomate et de béchamel gratinées au four.',
    category: 'Plats',
    image:
        'https://www.giallozafferano.com/images/2-269/Lasagna_650x433_wm.jpg',
    preparationTime: 60,
    ingredients: [
      'Pâtes à lasagnes',
      'Viande hachée',
      'Tomates',
      'Béchamel',
      'Mozzarella',
      'Parmesan',
    ],
  ),

  Recipe(
    id: 9,
    title: 'Poulet rôti',
    description:
        'Un poulet tendre et doré accompagné de pommes de terre rôties.',
    category: 'Plats',
    image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRxxp4DOexrBn4TVYSnwyTE39t0iFO_7a596VvGkqaObJn0jR_wX30zLk8&s=10',
    preparationTime: 70,
    ingredients: [
      'Poulet',
      'Pommes de terre',
      'Ail',
      'Oignons',
      'Thym',
      'Huile',
    ],
  ),

  Recipe(
    id: 10,
    title: 'Curry de poulet',
    description:
        'Un plat parfumé de poulet mijoté dans une sauce crémeuse au curry.',
    category: 'Plats',
    image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTvuY7LMZ683GwJaAxtAmbg2g20EQRgBLvAQ0QsjrpzYg&s=10',
    preparationTime: 45,
    ingredients: [
      'Poulet',
      'Curry',
      'Lait de coco',
      'Oignons',
      'Ail',
      'Tomates',
    ],
  ),

  Recipe(
    id: 11,
    title: 'Poisson grillé',
    description:
        'Un poisson grillé et parfumé accompagné d’une sauce aux herbes.',
    category: 'Plats',
    image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRGEN0MnCovERW2n-x6EYqrAHtC7Glekaui5TCa0eSa5AxEpXZ63CpH-2V6&s=10',
    preparationTime: 30,
    ingredients: ['Poisson', 'Citron', 'Ail', 'Persil', 'Poivre', 'Huile'],
  ),

  Recipe(
    id: 12,
    title: 'Riz sauté au poulet',
    description:
        'Un riz sauté savoureux avec du poulet, des légumes et des épices.',
    category: 'Plats',
    image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRAVREBgxtWH47fZ3NjvtAx0wnX57yjSbTVp7EVJBI1U5VXxsT8M0bUVGQ&s=10',
    preparationTime: 35,
    ingredients: [
      'Riz',
      'Poulet',
      'Carottes',
      'Poivrons',
      'Oignons',
      'Sauce soja',
    ],
  ),
];
