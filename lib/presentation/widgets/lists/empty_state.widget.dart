import 'package:flutter/material.dart';

class EmptyStateWidget extends StatelessWidget {
  const EmptyStateWidget({
    Key? key,
    required this.asset,
    this.text,
    this.spacing = 32,
  }) : super(key: key);

  final String asset;
  final String? text;
  final double spacing;

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.only(left: 80, right: 80, top: 160),
      children: [
        Image.asset(asset, fit: BoxFit.cover),
        SizedBox(height: spacing),
        if (text != null) Text(text!),
      ],
    );
  }
}
