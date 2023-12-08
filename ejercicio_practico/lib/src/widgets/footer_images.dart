import 'package:flutter/material.dart';

class FooterImages extends StatelessWidget {
  const FooterImages({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          child: Image.network('https://www.freshnlean.com/wp-content/uploads'
              '/2021/03/Meal-Plan-plate-protein.png'),
        ),
        CircleAvatar(
          child: Image.network('https://www.eatingwell.com/thmb/QYZnBgF72TIKI6-'
              'A--NyoPa6avY=/1500x0/filters:no_upscale()'
              ':max_bytes(150000):strip_icc()/greek-salmon-bowl'
              '-f681500cbe054bb1adb607ff55094075.jpeg'),
        ),
        CircleAvatar(
          child: Image.network('https://domf5oio6qrcr.cloudfront.net'
              '/medialibrary/11396/cb91e012-a635-4b41-a59a-'
              '8b23c836423d.jpg'),
        ),
        const SizedBox(
          child: Column(
            children: [
              Icon(Icons.cake),
              Icon(Icons.star),
              Icon(Icons.music_note),
            ],
          ),
        ),
      ],
    );
  }
}
