import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../data/recipe_data.dart';
import '../models/recipe.dart';

class AddRecipeScreen extends StatefulWidget {
  const AddRecipeScreen({super.key});

  @override
  State<AddRecipeScreen> createState() => _AddRecipeScreenState();
}

class _AddRecipeScreenState extends State<AddRecipeScreen> {
  final _formKey = GlobalKey<FormState>();

  String? _recipeName;
  String? _description;
  String? _category;
  String? _image;
  int? _preparationTime;

  final List<String> _ingredients = [];

  final TextEditingController _ingredientController = TextEditingController();

  @override
  void dispose() {
    _ingredientController.dispose();
    super.dispose();
  }

  void _addIngredient() {
    final ingredient = _ingredientController.text.trim();

    if (ingredient.isEmpty) {
      return;
    }

    setState(() {
      _ingredients.add(ingredient);
      _ingredientController.clear();
    });
  }

  void _saveRecipe() {
    if (!_formKey.currentState!.validate()) {
      return;
    }

    if (_ingredients.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Ajoutez au moins un ingrédient.')),
      );
      return;
    }

    _formKey.currentState!.save();

    final newId = recipes.isEmpty
        ? 1
        : recipes.map((recipe) => recipe.id).reduce((a, b) => a > b ? a : b) +
              1;

    final newRecipe = Recipe(
      id: newId,
      title: _recipeName!,
      description: _description!,
      category: _category!,
      image: _image!,
      preparationTime: _preparationTime!,
      ingredients: List.from(_ingredients),
    );

    recipes.add(newRecipe);

    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(content: Text('Recette ajoutée avec succès !')),
    );

    context.pop();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Ajouter une recette')),

      body: Form(
        key: _formKey,

        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16),

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextFormField(
                decoration: const InputDecoration(
                  labelText: 'Nom de la recette',
                  prefixIcon: Icon(Icons.restaurant),
                  hintText: 'Entrez le nom de la recette',
                  border: OutlineInputBorder(),
                ),

                validator: (value) {
                  if (value == null || value.trim().isEmpty) {
                    return 'Veuillez entrer un nom de recette';
                  }

                  return null;
                },

                onSaved: (value) {
                  _recipeName = value!.trim();
                },
              ),

              const SizedBox(height: 12),

              TextFormField(
                maxLines: 3,

                decoration: const InputDecoration(
                  labelText: 'Description',
                  prefixIcon: Icon(Icons.description),
                  hintText: 'Entrez une description',
                  border: OutlineInputBorder(),
                ),

                validator: (value) {
                  if (value == null || value.trim().isEmpty) {
                    return 'Veuillez entrer une description';
                  }

                  return null;
                },

                onSaved: (value) {
                  _description = value!.trim();
                },
              ),

              const SizedBox(height: 12),

              TextFormField(
                decoration: const InputDecoration(
                  labelText: 'Catégorie',
                  prefixIcon: Icon(Icons.category),
                  hintText: 'Ex : Plats, Desserts...',
                  border: OutlineInputBorder(),
                ),

                validator: (value) {
                  if (value == null || value.trim().isEmpty) {
                    return 'Veuillez entrer une catégorie';
                  }

                  return null;
                },

                onSaved: (value) {
                  _category = value!.trim();
                },
              ),

              const SizedBox(height: 12),

              TextFormField(
                decoration: const InputDecoration(
                  labelText: 'URL de l\'image',
                  prefixIcon: Icon(Icons.image),
                  hintText: 'Entrez l\'URL de l\'image',
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value == null || value.trim().isEmpty) {
                    return 'Veuillez entrer une URL';
                  }

                  final uri = Uri.tryParse(value.trim());

                  if (uri == null || !uri.hasScheme || !uri.hasAuthority) {
                    return 'Veuillez entrer une URL valide';
                  }

                  return null;
                },

                onSaved: (value) {
                  _image = value!.trim();
                },
              ),

              const SizedBox(height: 12),

              TextFormField(
                keyboardType: TextInputType.number,

                decoration: const InputDecoration(
                  labelText: 'Temps de préparation',
                  prefixIcon: Icon(Icons.timer),
                  hintText: 'Ex : 30',
                  suffixText: 'min',
                  border: OutlineInputBorder(),
                ),

                validator: (value) {
                  if (value == null || value.trim().isEmpty) {
                    return 'Veuillez entrer un temps';
                  }

                  final time = int.tryParse(value);

                  if (time == null || time <= 0) {
                    return 'Entrez un nombre valide';
                  }

                  return null;
                },

                onSaved: (value) {
                  _preparationTime = int.parse(value!);
                },
              ),

              const SizedBox(height: 20),

              const Text(
                'Ingrédients',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),

              const SizedBox(height: 10),

              Row(
                children: [
                  Expanded(
                    child: TextField(
                      controller: _ingredientController,
                      decoration: const InputDecoration(
                        labelText: 'Ajouter un ingrédient',
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),

                  const SizedBox(width: 8),

                  IconButton(
                    onPressed: _addIngredient,
                    icon: const Icon(Icons.add),
                  ),
                ],
              ),

              const SizedBox(height: 10),

              Wrap(
                spacing: 8,
                runSpacing: 8,

                children: _ingredients.map((ingredient) {
                  return Chip(
                    label: Text(ingredient),

                    onDeleted: () {
                      setState(() {
                        _ingredients.remove(ingredient);
                      });
                    },
                  );
                }).toList(),
              ),

              const SizedBox(height: 24),

              SizedBox(
                width: double.infinity,

                child: ElevatedButton.icon(
                  onPressed: _saveRecipe,

                  icon: const Icon(Icons.save),

                  label: const Text('Enregistrer la recette'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
