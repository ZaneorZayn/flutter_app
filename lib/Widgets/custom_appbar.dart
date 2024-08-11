import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final Widget title;
  final List<Widget>? actions;
  final Color backgroundColor; // Make backgroundColor required


  const CustomAppBar({
    Key? key,
    required this.title,
    this.actions,
    required this.backgroundColor,

  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
        backgroundColor: backgroundColor, // Use the background color parameter
        title: title,
        actions: actions,
        elevation: 1.0, // Customize as needed

      );

  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
