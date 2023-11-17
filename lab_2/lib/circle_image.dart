import 'package:flutter/material.dart';

class CircleImage extends StatelessWidget {
  const CircleImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(5),
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.white,
          width: 5,
          strokeAlign: BorderSide.strokeAlignOutside,
        ),
        borderRadius: const BorderRadius.all(Radius.circular(100)),
        image: const DecorationImage(
          image: AssetImage('assets/images/author_katz.jpeg'),
        ),
      ),
      constraints: const BoxConstraints.expand(
        height: 50,
        width: 50,
      ),
    );
  }
}
