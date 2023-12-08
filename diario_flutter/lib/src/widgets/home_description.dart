import 'package:flutter/material.dart';

class HomeDescription extends StatelessWidget {
  const HomeDescription({
    super.key,
    required String homeDescription,
  }) : _homeDescription = homeDescription;

  final String _homeDescription;

  @override
  Widget build(BuildContext context) {
    return Text(
      _homeDescription,
      style: TextStyle(
        fontSize: 16.0,
        color: Colors.grey[700],
      ),
    );
  }
}
