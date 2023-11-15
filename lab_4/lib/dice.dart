import 'package:flutter/material.dart';

class Dice extends StatelessWidget {
  final int _value;

  const Dice(int value, {super.key}) : _value = value;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Image.asset("assets/images/dice$_value.png"),
    );
  }
}
