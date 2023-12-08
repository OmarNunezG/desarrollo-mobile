import 'package:flutter/material.dart';

class FooterImage extends StatelessWidget {
  const FooterImage({
    super.key,
    required String imagePath,
  }) : _imagePath = imagePath;

  final String _imagePath;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        right: 16.0,
      ),
      child: CircleAvatar(
        radius: 40,
        backgroundImage: AssetImage(_imagePath),
      ),
    );
  }
}
