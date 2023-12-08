import 'package:flutter/material.dart';

class EntryLabels extends StatelessWidget {
  const EntryLabels({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: [
        Chip(
          label: Text('Gift 1'),
        ),
        Chip(
          label: Text('Gift 2'),
        ),
        Chip(
          label: Text('Gift 3'),
        ),
        Chip(
          label: Text('Gift 4'),
        ),
        Chip(
          label: Text('Gift 5'),
        ),
        Chip(
          label: Text('Gift 6'),
        ),
        Chip(
          label: Text('Gift 7'),
        ),
      ],
    );
  }
}
