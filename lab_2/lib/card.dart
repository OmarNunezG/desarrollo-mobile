import 'package:flutter/material.dart';

class DisplayCard extends StatelessWidget {
  final Widget _child;

  final EdgeInsetsGeometry? _padding;

  final String _image;

  const DisplayCard({
    super.key,
    required Widget child,
    required String image,
    EdgeInsetsGeometry? padding,
  })  : _child = child,
        _image = image,
        _padding = padding;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        constraints: const BoxConstraints.expand(
          height: 450,
          width: 350,
        ),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/$_image.png'),
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.circular(10),
        ),
        padding: _padding,
        child: _child,
      ),
    );
  }
}
