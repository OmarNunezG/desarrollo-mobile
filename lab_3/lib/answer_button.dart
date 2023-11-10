import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  final void Function() _onPressed;
  final String _text;
  final Color _backgroundColor;

  const AnswerButton({
    super.key,
    required void Function() onPressed,
    required String text,
    required Color backgroundColor,
  })  : _text = text,
        _backgroundColor = backgroundColor,
        _onPressed = onPressed;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: _onPressed,
      style: TextButton.styleFrom(
        backgroundColor: _backgroundColor,
      ),
      child: Text(
        _text,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 25,
        ),
      ),
    );
  }
}
