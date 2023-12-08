import 'package:flutter/material.dart';

class Tag extends StatelessWidget {
  const Tag({
    super.key,
    required String tagLabel,
  }) : _tagLabel = tagLabel;

  final String _tagLabel;

  @override
  Widget build(BuildContext context) {
    return Chip(
      avatar: const Icon(Icons.label_outline),
      label: Text(_tagLabel),
      elevation: 1,
    );
  }
}
