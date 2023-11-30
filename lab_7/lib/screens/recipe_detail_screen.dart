import 'package:flutter/material.dart';

import '../models/recipe.dart';

class RecipeDetailScreen extends StatefulWidget {
  const RecipeDetailScreen({
    super.key,
    required Recipe recipe,
  }) : _recipe = recipe;

  final Recipe _recipe;

  @override
  State<RecipeDetailScreen> createState() => _RecipeDetailScreenState();
}

class _RecipeDetailScreenState extends State<RecipeDetailScreen> {
  double _sliderValue = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget._recipe.label),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Image.asset(widget._recipe.imageURL),
            const SizedBox(
              height: 10,
            ),
            Text(widget._recipe.label),
            const SizedBox(
              height: 20,
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: ListView.builder(
                  itemCount: widget._recipe.ingredients.length,
                  itemBuilder: (context, index) {
                    final ingredient = widget._recipe.ingredients[index];
                    return Text('${_sliderValue * ingredient.quantity} '
                        '${ingredient.measure} ${ingredient.name}');
                  },
                ),
              ),
            ),
            Slider(
              label: '${widget._recipe.servings * _sliderValue} servings',
              min: 1,
              max: 100,
              activeColor: Colors.green,
              inactiveColor: Colors.black,
              divisions: 99,
              value: _sliderValue,
              onChanged: (value) => setState(() => _sliderValue = value),
            ),
          ],
        ),
      ),
    );
  }
}
