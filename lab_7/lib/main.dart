import 'package:flutter/material.dart';
import 'package:lab_7/screens/home_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ThemeData().colorScheme.copyWith(
              primary: Colors.grey,
              secondary: Colors.black,
            ),
      ),
      home: const HomeScreen(
        title: "Recipe App",
      ),
    );
  }
}
