class Recipe {
  final int id;
  final String title;
  final String description;
  final String category;
  final String image;
  final int preparationTime;
  final List<String> ingredients;

  Recipe({
    required this.id,
    required this.title,
    required this.description,
    required this.category,
    required this.image,
    required this.preparationTime,
    required this.ingredients,
  });
}