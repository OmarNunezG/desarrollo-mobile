import 'package:flutter/material.dart';

class WeatherSection extends StatelessWidget {
  const WeatherSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Column(
          children: [
            Icon(
              Icons.sunny,
              color: Colors.orangeAccent,
            ),
          ],
        ),
        const SizedBox(
          width: 20,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Row(
              children: [
                Text(
                  '81º Clear',
                  style: TextStyle(
                    color: Colors.deepOrangeAccent,
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Text(
                  '4500 San Alpho Drive, Dallas, TX United States',
                  style: TextStyle(
                    color: Colors.grey[700],
                  ),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
