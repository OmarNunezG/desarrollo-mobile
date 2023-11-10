import 'package:flutter/material.dart';

class QuestionText extends StatelessWidget {
  final String _text;

  const QuestionText(String text, {super.key}) : _text = text;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        _text,
        textAlign: TextAlign.center,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 24,
        ),
      ),
    );
  }
}
