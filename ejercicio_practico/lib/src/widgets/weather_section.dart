import 'package:flutter/material.dart';

class WeatherSection extends StatelessWidget {
  const WeatherSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Column(
          children: [
            Icon(
              Icons.sunny,
              color: Colors.orangeAccent,
            ),
          ],
        ),
        SizedBox(),
        Column(
          children: [
            Row(
              children: [
                Text('81º Clear'),
              ],
            ),
            Row(
              children: [
                Text('4500 San Alpho Drive, Dallas, TX United'
                    ' States'),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
