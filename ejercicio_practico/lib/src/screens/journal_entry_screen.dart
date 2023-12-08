import 'package:ejercicio_practico/src/widgets/entry_description.dart';
import 'package:ejercicio_practico/src/widgets/entry_labels.dart';
import 'package:ejercicio_practico/src/widgets/entry_title.dart';
import 'package:ejercicio_practico/src/widgets/footer_images.dart';
import 'package:ejercicio_practico/src/widgets/weather_section.dart';
import 'package:flutter/material.dart';

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
              Image.network('https://5.imimg.com/data5/HC/EV/MY-15940038'
                  '/diwali-gift-box.jpg'),
              const SafeArea(
                child: Column(
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
