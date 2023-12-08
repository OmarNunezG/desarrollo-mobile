import 'package:flutter/material.dart';

import 'weather_icon.dart';
import 'weather_indicator.dart';
import 'weather_location.dart';

class WeatherSection extends StatelessWidget {
  const WeatherSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          children: [
            WeatherIcon(),
          ],
        ),
        SizedBox(
          width: 15,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            WeatherIndicator(),
            WeatherLocation(),
          ],
        )
      ],
    );
  }
}
