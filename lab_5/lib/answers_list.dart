import 'package:flutter/material.dart';

import 'answer_button.dart';

class AnswersList extends StatelessWidget {
  final List<String> _children;
  final void Function(String) _onTap;

  const AnswersList({
    super.key,
    required List<String> children,
    required void Function(String) onTap,
  })  : _children = children,
        _onTap = onTap;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        ..._children.map(
          (e) => AnswerButton(
            text: e,
            onTap: () => _onTap(e),
          ),
        ),
      ],
    );
  }
}
