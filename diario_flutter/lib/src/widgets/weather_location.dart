import 'package:flutter/material.dart';

class WeatherLocation extends StatelessWidget {
  const WeatherLocation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Text(
      '4500 San Alpho Drive, Dallas TX',
      style: TextStyle(
        color: Colors.grey,
        fontSize: 18,
        fontWeight: FontWeight.w400,
      ),
    );
  }
}
