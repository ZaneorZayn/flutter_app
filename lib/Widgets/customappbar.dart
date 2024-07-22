import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final List<Widget> actions;
  final Color backgroundColor;
  final TabBar? tabBar;

  CustomAppBar({
    required this.title,
    required this.actions,
    required this.backgroundColor,
    this.tabBar,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: backgroundColor,
      title: Text(title),
      actions: actions,
      bottom: tabBar,
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(tabBar == null ? 65.0 : 110.0);
}
