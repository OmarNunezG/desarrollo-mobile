import 'package:flutter/material.dart';

class EntryDescription extends StatelessWidget {
  const EntryDescription({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      'It\'s going to be a great birthdate. We are going out for dinner at my'
      ' favorite place, then watch a movie  after we go to the gelateria for'
      ' ice cream and espresso.',
      style: TextStyle(
        color: Colors.grey[700],
      ),
    );
  }
}
