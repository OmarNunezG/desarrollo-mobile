import 'package:flutter/material.dart';

class EntryTitle extends StatelessWidget {
  const EntryTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Text(
      'My Birthday',
      style: TextStyle(
        fontSize: 32,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
