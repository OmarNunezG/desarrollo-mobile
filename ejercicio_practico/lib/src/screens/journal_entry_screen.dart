import 'package:flutter/material.dart';

import '../widgets/entry_description.dart';
import '../widgets/entry_labels.dart';
import '../widgets/entry_title.dart';
import '../widgets/footer_images.dart';
import '../widgets/weather_section.dart';

class JournalEntryScreen extends StatelessWidget {
  const JournalEntryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Layouts'),
        actions: [
          Container(
            height: double.infinity,
            width: 50,
            padding: const EdgeInsets.all(10),
            child: const Icon(Icons.cloud_outlined),
          ),
        ],
        leading: const Padding(
          padding: EdgeInsets.all(8),
          child: Icon(Icons.menu),
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.network(
                'https://5.imimg.com/data5/HC/EV/MY-15940038/diwali-gift-'
                'box.jpg',
                height: MediaQuery.of(context).size.height * 0.3,
                width: double.infinity,
                fit: BoxFit.contain,
              ),
              const SafeArea(
                minimum: EdgeInsets.all(15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    EntryTitle(),
                    EntryDescription(),
                    WeatherSection(),
                    EntryLabels(),
                    FooterImages(),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
