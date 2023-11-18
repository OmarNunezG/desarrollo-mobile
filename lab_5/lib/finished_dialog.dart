import 'package:flutter/material.dart';

class FinishedDialog extends StatelessWidget {
  final int _score;
  final int _total;
  final void Function() _onPressed;

  const FinishedDialog({
    super.key,
    required int score,
    required int total,
    required void Function() onPressed,
  })  : _score = score,
        _total = total,
        _onPressed = onPressed;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('Quiz Finished'),
      content: Text('You scored $_score out of $_total'),
      actions: [
        TextButton(
          onPressed: _onPressed,
          child: const Text('OK'),
        ),
      ],
    );
  }
}
