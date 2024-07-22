import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
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
        title: Text(title),
        actions: actions,
        elevation: 1.0, // Customize as needed
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(25.0),
          ),
        ),
      );

  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
