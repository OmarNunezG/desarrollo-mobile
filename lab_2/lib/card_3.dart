import 'package:flutter/material.dart';
import 'package:lab_2/food_theme.dart';

class Card3 extends StatelessWidget {
  const Card3({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            color: Colors.black.withOpacity(0.6),
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        Container(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Icon(
                Icons.book,
                size: 40,
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                'Recipe Trends',
                style: FoodTheme.darkTextTheme.displayLarge,
              ),
              const SizedBox(
                height: 30,
              ),
              Center(
                child: Wrap(
                  alignment: WrapAlignment.start,
                  spacing: 12,
                  runSpacing: 12,
                  children: [
                    Chip(
                      label: Text(
                        'Onion',
                        style: FoodTheme.darkTextTheme.bodyLarge,
                      ),
                      backgroundColor: Colors.black.withOpacity(0.7),
                      onDeleted: () {},
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
