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
            // margin: const EdgeInsets.all(10),
            child: const Icon(Icons.cloud_outlined),
          ),
        ],
        leading: const Padding(
          padding: EdgeInsets.all(8),
          child: Icon(Icons.menu),
        ),
        centerTitle: true,
      ),
      body: const SafeArea(
        child: Placeholder(),
      ),
    );
  }
}
