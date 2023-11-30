import 'package:flutter/material.dart';

import '../../models/recipe.dart';

Card buildCardWidget(Recipe recipe) {
  return Card(
    elevation: 2,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10),
    ),
    child: Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        children: [
          Image.asset(recipe.imageURL),
          const SizedBox(
            height: 10,
          ),
          Text(recipe.label)
        ],
      ),
    ),
  );
}
