import 'package:diario_flutter/src/widgets/footer_icon.dart';
import 'package:flutter/material.dart';

import 'footer_image.dart';

class Footer extends StatelessWidget {
  const Footer({
    super.key,
    required List<String> images,
    required List<Icon> icons,
  })  : _images = images,
        _icons = icons;

  final List<String> _images;
  final List<Icon> _icons;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Row(
            children: List.generate(
              _images.length,
              (index) => FooterImage(
                imagePath: _images[index],
              ),
            ),
          ),
          SizedBox(
            width: 150,
            child: Column(
              children: List.generate(
                _icons.length,
                (index) => FooterIcon(
                  icon: _icons[index],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
