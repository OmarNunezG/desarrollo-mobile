import 'package:flutter/material.dart';

class FooterIcon extends StatelessWidget {
  const FooterIcon({
    super.key,
    required Icon icon,
  }) : _icon = icon;

  final Icon _icon;

  @override
  Widget build(BuildContext context) {
    return _icon;
  }
}
