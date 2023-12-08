import 'package:flutter/material.dart';

import 'section_border.dart';

class Section extends StatelessWidget {
  const Section({
    super.key,
    required Widget sectionWidget,
  }) : _sectionWidget = sectionWidget;

  final Widget _sectionWidget;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 8),
        const SectionBorder(),
        const SizedBox(height: 8),
        _sectionWidget
      ],
    );
  }
}
