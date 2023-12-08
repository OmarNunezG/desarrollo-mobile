import 'package:flutter/material.dart';

class EntryLabels extends StatelessWidget {
  const EntryLabels({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: [
        Chip(
          
          avatar: Icon(Icons.wallet_giftcard),
          label: Text('Gift 1'),
        ),
        Chip(
          avatar: Icon(Icons.wallet_giftcard),
          label: Text('Gift 2'),
        ),
        Chip(
          avatar: Icon(Icons.wallet_giftcard),
          label: Text('Gift 3'),
        ),
        Chip(
          avatar: Icon(Icons.wallet_giftcard),
          label: Text('Gift 4'),
        ),
        Chip(
          avatar: Icon(Icons.wallet_giftcard),
          label: Text('Gift 5'),
        ),
        Chip(
          avatar: Icon(Icons.wallet_giftcard),
          label: Text('Gift 6'),
        ),
        Chip(
          avatar: Icon(Icons.wallet_giftcard),
          label: Text('Gift 7'),
        ),
      ],
    );
  }
}
