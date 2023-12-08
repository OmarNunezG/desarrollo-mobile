import 'package:flutter/material.dart';

import 'tag.dart';

class Tags extends StatelessWidget {
  const Tags({
    super.key,
    required this.tags,
  });

  final List<String> tags;

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 5,
      children: List.generate(
        tags.length,
        (index) => Tag(
          tagLabel: tags[index],
        ),
      ),
    );
  }
}
