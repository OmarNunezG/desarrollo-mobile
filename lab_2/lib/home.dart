import 'package:flutter/material.dart';

import 'display_card.dart';
import 'card_1.dart';
import 'card_2.dart';
import 'card_3.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedItem = 0;

  final List<Widget> _pages = [
    const DisplayCard(
      image: 'mag1',
      padding: EdgeInsets.all(10),
      child: Card1(),
    ),
    const DisplayCard(
      image: 'mag5',
      child: Card2(),
    ),
    const DisplayCard(
      image: "mag2",
      child: Card3(),
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedItem = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Social Food',
          style: Theme.of(context).textTheme.displayLarge,
        ),
      ),
      body: _pages[_selectedItem],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedItem,
        onTap: _onItemTapped,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.card_giftcard),
            label: 'Card 1',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.card_giftcard),
            label: 'Card 2',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.card_giftcard),
            label: 'Card 3',
          ),
        ],
      ),
    );
  }
}
