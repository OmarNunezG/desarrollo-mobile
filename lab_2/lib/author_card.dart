import 'package:flutter/material.dart';

import 'circle_image.dart';
import 'food_theme.dart';

class AuthorCard extends StatefulWidget {
  const AuthorCard({super.key});

  @override
  State<AuthorCard> createState() => _AuthorCardState();
}

class _AuthorCardState extends State<AuthorCard> {
  bool _favorite = false;
  IconData _icon = Icons.favorite_outline;
  Color _iconColor = Colors.grey;

  SnackBar _getSnackBar(String text, void Function() onPressed) {
    return SnackBar(
      content: Text(text),
      action: SnackBarAction(
        label: 'Undo',
        onPressed: onPressed,
      ),
    );
  }

  void _showSnackBar(SnackBar snackBar) {
    final scaffoldMessengerState = ScaffoldMessenger.of(context);
    scaffoldMessengerState.clearSnackBars();
    scaffoldMessengerState.showSnackBar(snackBar);
  }

  void _manageFavorite() {
    setState(() {
      if (_favorite) {
        _icon = Icons.favorite_outline;
        _iconColor = Colors.grey;

        final snackBar = _getSnackBar('Removed from favorite', _manageFavorite);
        _showSnackBar(snackBar);
      } else {
        _icon = Icons.favorite;
        _iconColor = Colors.red;

        final snackBar = _getSnackBar('Added to favorite', _manageFavorite);
        _showSnackBar(snackBar);
      }
      _favorite = !_favorite;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              const Padding(
                padding: EdgeInsets.only(right: 10),
                child: CircleImage(),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Mike Katz",
                    style: FoodTheme.lightTextTheme.titleLarge,
                  ),
                  Text(
                    "Smoothie Connoisseur",
                    style: FoodTheme.lightTextTheme.displaySmall,
                  ),
                ],
              ),
            ],
          ),
          IconButton(
            onPressed: _manageFavorite,
            icon: Icon(
              _icon,
              color: _iconColor,
            ),
          ),
        ],
      ),
    );
  }
}

// Add SnackBar when adding or removing from favorite
