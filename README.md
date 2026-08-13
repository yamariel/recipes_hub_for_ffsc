# RecipeHub

RecipeHub est une application mobile Flutter de découverte et de gestion de recettes de cuisine.

L'application permet de parcourir des recettes, rechercher et filtrer des recettes par catégorie, consulter leurs détails et ajouter de nouvelles recettes grâce à un formulaire avec validation.

Le projet a été réalisé dans le cadre d'une certification Flutter portant sur les fondamentaux des widgets, la navigation et la construction d'une application multi-écrans.

---

## Fonctionnalités

### Accueil
- Présentation de l'application
- Accès rapide aux recettes
- Affichage des recettes populaires
- Navigation vers les différentes fonctionnalités
  <img src="screenshots/home.webp" alt="Accueil" width="400">

### Liste des recettes
- Affichage des recettes sous forme de grille
- Recherche par nom
- Filtrage par catégorie
- Affichage d'un message lorsqu'aucune recette ne correspond
- Adaptation de la grille selon la taille de l'écran
  <img src="screenshots/recipes.webp" alt="Liste des recettes" width="400">

### Détail d'une recette
- Affichage de l'image
- Nom de la recette
- Description
- Catégorie
- Temps de préparation
- Liste des ingrédients
  <img src="screenshots/details.webp" alt="Détail d'une recette" width="400">
- 
### Ajouter une recette
- Formulaire de création de recette
- Validation des champs
- Ajout dynamique des ingrédients
- Suppression d'un ingrédient
- Ajout de la recette à la liste
  <img src="screenshots/add_recipe.webp" alt="Ajouter une recette" width="400">

### Thème
- Prise en charge du thème clair
- Prise en charge du thème sombre
  <img src="screenshots/dark_mode.webp" alt="Mode sombre" width="400">

---

## Navigation

La navigation de l'application est réalisée avec **GoRouter**.

Routes principales :

- `/` → Accueil
- `/recipes` → Liste des recettes
- `/add-recipe` → Ajouter une recette
- `/recipe` → Détail d'une recette

La recette sélectionnée est transmise à l'écran de détail lors de la navigation.

---

## Recherche et filtrage

L'écran des recettes permet de rechercher une recette par son titre et de filtrer les résultats par catégorie.

Les deux filtres peuvent être utilisés simultanément.

Exemple :

```text
Recherche : poulet
Catégorie : Plats
````
## Architecture du projet
````
lib/
├── data/
│   └── recipe_data.dart
│
├── models/
│   └── recipe.dart
│
├── routes/
│   └── routes.dart
│
├── screens/
│   ├── home_screen.dart
│   ├── recipes_screen.dart
│   ├── recipe_detail_screen.dart
│   └── add_recipe_screen.dart
│
├── services/
│   └── recipe_filter.dart
│
├── widgets/
│   ├── recipe_card.dart
│   ├── search_bar.dart
│   └── category_chip.dart
│
└── main.dart
|
│screenshots/
    ├── home.webp
    ├── recipes.webp
    ├── detail.webp
    ├── add_recipe.webp
    └── dark_mode.webp
````
# Technologies utilisées
- Flutter
- Dart
- Material 3
- GoRouter
- flutter_test

# Installation

````bash
git clone https://github.com/yamariel/recipes_hub_for_ffsc
````
## Entrer dans le projet :
````text
cd recipes_hub_for_ffsc
````

## Installer les dépendances :

````bash
flutter pub get
````

## Auteur

**Ariel Yamien**

- [GitHub](https://github.com/yamariel)
- [LinkedIn](https://www.linkedin.com/in/ariel-yamien/)