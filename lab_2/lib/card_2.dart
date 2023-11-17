import 'package:flutter/material.dart';

import 'author_card.dart';
import 'food_theme.dart';

class Card2 extends StatelessWidget {
  const Card2({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const AuthorCard(),
        Expanded(
          child: Stack(
            children: [
              Positioned(
                bottom: 75,
                child: RotatedBox(
                  quarterTurns: 3,
                  child: Text(
                    'Smoothies',
                    style: FoodTheme.lightTextTheme.displayLarge,
                  ),
                ),
              ),
              Positioned(
                right: 10,
                bottom: 5,
                child: Text(
                  'Recipe',
                  style: FoodTheme.lightTextTheme.displayLarge,
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
