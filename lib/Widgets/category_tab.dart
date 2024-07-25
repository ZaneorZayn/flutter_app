import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CategoryTab extends StatelessWidget {
final String text;

CategoryTab({required this.text});

@override
Widget build(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 8.0),
    child: Container(
      decoration: BoxDecoration(),
      child: Chip(
        label: Text(text),
      ),
    ),
  );
}
}