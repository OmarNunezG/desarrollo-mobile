import 'package:flutter/material.dart';
import 'package:lab_7/screens/recipe_detail_screen.dart';

import '../models/recipe.dart';
import 'widgets/build_card_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({
    super.key,
    required String title,
  }) : _title = title;

  final String _title;

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget._title),
        centerTitle: true,
      ),
      body: SafeArea(
        child: ListView.builder(
          itemCount: Recipe.samples.length,
          itemBuilder: (context, index) => GestureDetector(
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => RecipeDetailScreen(
                  recipe: Recipe.samples[index],
                ),
              ),
            ),
            child: buildCardWidget(Recipe.samples[index]),
          ),
        ),
      ),
    );
  }
}
