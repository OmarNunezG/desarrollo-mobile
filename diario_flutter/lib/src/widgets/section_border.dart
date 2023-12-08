import 'package:flutter/material.dart';

class SectionBorder extends StatelessWidget {
  const SectionBorder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 1,
      width: double.infinity,
      color: Colors.grey[300],
      child: const SizedBox(height: 8), // Soft gray color for the border
    );
  }
}
