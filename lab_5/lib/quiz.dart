import 'package:flutter/material.dart';

import 'constants/constats.dart';
import 'quiz_page.dart';
import 'start_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  Widget? _activeScreen;

  @override
  void initState() {
    _activeScreen = StartScreen(switchScreen);
    super.initState();
  }

  void switchScreen() => setState(() => _activeScreen = const QuizPage());

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        body: Container(
          decoration: kContainerStyle,
          child: _activeScreen,
        ),
      ),
    );
  }
}
