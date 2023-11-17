import 'package:flutter/material.dart';

import 'food_theme.dart';

class Card1 extends StatelessWidget {
  const Card1({super.key});

  final String _category = 'Editor\'s choice';
  final String _title = 'The Art of Dough';
  final String _description = 'Learn to make the perfect bread';
  final String _author = 'Jorge Pérez';

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Text(
          _category,
          style: FoodTheme.darkTextTheme.bodyLarge,
        ),
        Positioned(
          top: 20,
          child: Text(
            _title,
            style: FoodTheme.darkTextTheme.displayLarge,
          ),
        ),
        Positioned(
          bottom: 30,
          right: 0,
          child: Text(
            _description,
            style: FoodTheme.darkTextTheme.bodyLarge,
          ),
        ),
        Positioned(
          bottom: 15,
          right: 0,
          child: Text(
            _author,
            style: FoodTheme.darkTextTheme.bodyLarge,
          ),
        ),
      ],
    );
  }
}
