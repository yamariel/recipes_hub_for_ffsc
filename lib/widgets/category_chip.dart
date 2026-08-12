import 'package:flutter/material.dart';

class CategoryChip extends StatelessWidget{
  final String label;
  final bool selected;
  final VoidCallback onSelected;

  const CategoryChip({
    super.key,
    required this.label,
    required this.selected,
    required this.onSelected
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(right: 12),
        child: ChoiceChip(
          label: Text(label),
          selected: selected,
          onSelected: (_) {
            onSelected();
          }
        )
    );
  }
}