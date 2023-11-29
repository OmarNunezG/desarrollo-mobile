import 'package:flutter/material.dart';

class SummaryScreen extends StatelessWidget {
  const SummaryScreen({
    super.key,
    required List<Map<String, Object>> questionSummary,
  }) : _questionSummary = questionSummary;

  final List<Map<String, Object>> _questionSummary;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ..._questionSummary.map(
          (e) => Row(
            children: [
              Text(((e['question_number'] as int) + 1).toString()),
              Column(
                children: [
                  Text(e['question'] as String),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(e['user_asnwer'] as String)
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
