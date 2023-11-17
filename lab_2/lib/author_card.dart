import 'package:flutter/material.dart';

import 'circle_image.dart';
import 'food_theme.dart';

class AuthorCard extends StatelessWidget {
  const AuthorCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              const Padding(
                padding: EdgeInsets.only(right: 10),
                child: CircleImage(),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Mike Katz",
                    style: FoodTheme.lightTextTheme.titleLarge,
                  ),
                  Text(
                    "Smoothie Connoisseur",
                    style: FoodTheme.lightTextTheme.displaySmall,
                  ),
                ],
              ),
            ],
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.favorite_border,
              color: Colors.grey,
            ),
          ),
        ],
      ),
    );
  }
}
