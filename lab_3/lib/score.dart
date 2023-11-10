import 'package:flutter/material.dart';

class Score extends StatelessWidget {
  const Score({
    super.key,
    required List<Widget> scoreKeeper,
  }) : _scoreKeeper = scoreKeeper;

  final List<Widget> _scoreKeeper;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: _scoreKeeper,
    );
  }
}
