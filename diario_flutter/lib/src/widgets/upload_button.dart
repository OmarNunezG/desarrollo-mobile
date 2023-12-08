import 'package:flutter/material.dart';

class UploadButton extends StatelessWidget {
  const UploadButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: 50,
      padding: const EdgeInsets.all(10),
      child: const Icon(Icons.cloud_outlined),
    );
  }
}
