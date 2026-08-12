import 'package:flutter/material.dart';

class SearchbarWidget extends StatelessWidget {
  final ValueChanged<String> onChanged;
  const SearchbarWidget({super.key, required this.onChanged});

  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: onChanged,
      decoration: InputDecoration(
        hintText: "Rechercher une recette",
        prefixIcon: const Icon(Icons.search),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
    );
  }
}