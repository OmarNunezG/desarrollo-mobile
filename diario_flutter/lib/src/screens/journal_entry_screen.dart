import 'package:flutter/material.dart';

import '../widgets/footer.dart';
import '../widgets/home_description.dart';
import '../widgets/home_title.dart';
import '../widgets/menu_button.dart';
import '../widgets/section.dart';
import '../widgets/tags.dart';
import '../widgets/upload_button.dart';
import '../widgets/weather_section.dart';

class JournalEntryScreen extends StatelessWidget {
  const JournalEntryScreen({
    super.key,
  });

  static const String _topImagePath = 'assets/images/calendar.webp';

  static const String _homeTitle = 'My Birthday';

  static const String _homeDescription =
      'It\'s going to be a great birthday. We are going out for'
      ' dinner at my favorite place, then watch a movie after we'
      ' go to the galleria for ice cream and espresso.';

  static const List<String> _tags = [
    'Birthday',
    'Food',
    'Date',
    'Movie',
    'Family',
    'Home',
  ];

  static const List<String> _footerImages = [
    'assets/images/birthday-cake.jpg',
    'assets/images/birthday-gifts.jpg',
    'assets/images/birthday-food.jpeg',
  ];

  static const List<Icon> _footerIcons = [
    Icon(Icons.cake),
    Icon(Icons.party_mode),
    Icon(Icons.wine_bar),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Layouts'),
        actions: const [
          UploadButton(),
        ],
        leading: const MenuButton(),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(
              _topImagePath,
              width: double.infinity,
              fit: BoxFit.contain,
            ),
            const Padding(
              padding: EdgeInsets.all(15),
              child: SafeArea(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    HomeTitle(
                      homeTitle: _homeTitle,
                    ),
                    Section(
                      sectionWidget: HomeDescription(
                        homeDescription: _homeDescription,
                      ),
                    ),
                    Section(
                      sectionWidget: WeatherSection(),
                    ),
                    Section(
                      sectionWidget: Tags(
                        tags: _tags,
                      ),
                    ),
                    Section(
                      sectionWidget: Footer(
                        images: _footerImages,
                        icons: _footerIcons,
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
