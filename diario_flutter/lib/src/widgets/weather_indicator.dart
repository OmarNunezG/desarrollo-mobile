import 'package:flutter/material.dart';

class WeatherIndicator extends StatelessWidget {
  const WeatherIndicator({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Text(
      '82º Clear',
      style: TextStyle(
        color: Colors.deepOrange,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
