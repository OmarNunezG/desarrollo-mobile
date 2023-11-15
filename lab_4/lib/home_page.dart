import 'dart:math';

import 'package:flutter/material.dart';

import 'touchable_dice.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _random = Random();
  int _dice1 = 1;
  int _dice2 = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          color: Color.fromARGB(255, 125, 0, 0),
        ),
        child: Center(
          child: Row(
            children: [
              Expanded(
                child: TouchableDice(
                  value: _dice1,
                  onTap: _rollDice,
                ),
              ),
              Expanded(
                child: TouchableDice(
                  value: _dice2,
                  onTap: _rollDice,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  int _randomDice() => _random.nextInt(6) + 1;

  void _rollDice() {
    setState(() {
      _dice1 = _randomDice();
      _dice2 = _randomDice();
    });
  }
}
