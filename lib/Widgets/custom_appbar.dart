import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  final Widget title;
  final List<Widget> actions;
  final Color backgroundColor;

  const CustomAppBar({
    Key? key,
    required this.title,
    required this.actions,
    required this.backgroundColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color(0xffF49EC4), // Start color
            Color(0xffF9C0C7), // End color
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(20.0),
          bottomRight: Radius.circular(20.0),
        ),
        child: AppBar(
          backgroundColor: Colors.transparent, // Make the AppBar background transparent
          elevation: 0,
          title: title,
          actions: actions,
        ),
      ),
    );
  }
}
