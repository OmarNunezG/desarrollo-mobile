import 'package:flutter/material.dart';

import 'dice.dart';

class TouchableDice extends StatelessWidget {
  final int _value;
  final void Function() _onTap;

  const TouchableDice({
    super.key,
    required void Function() onTap,
    required int value,
  })  : _onTap = onTap,
        _value = value;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _onTap,
      child: Dice(_value),
    );
  }
}
