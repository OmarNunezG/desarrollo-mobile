import 'package:flutter/material.dart';

class HomeTitle extends StatelessWidget {
  const HomeTitle({
    super.key,
    required this.homeTitle,
  });

  final String homeTitle;

  @override
  Widget build(BuildContext context) {
    return Text(
      homeTitle,
      style: const TextStyle(
        fontSize: 32.0,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
