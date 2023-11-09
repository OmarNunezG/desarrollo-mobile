import 'package:flutter/material.dart';
import 'package:lab_2/food_theme.dart';

import 'home.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = FoodTheme.dark();
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      theme: theme,
      home: const Home(),
    );
  }
}
