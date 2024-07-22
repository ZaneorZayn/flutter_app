import 'package:flutter/material.dart';
import 'package:mobile_app/Provider/botnavigation_provider.dart';
import 'package:mobile_app/Views/blog_page.dart';
import 'package:mobile_app/Views/homepage.dart';
import 'package:mobile_app/Views/product_page.dart';
import 'package:mobile_app/Widgets/bottom_navigationbar.dart';
import 'package:provider/provider.dart';

import 'clinic_page.dart';

class MainPage extends StatelessWidget {
  //const MainPage({super.key});

  final List<Widget> _pages = [
    HomePage(),
    BlogPage(),
    ClinicPage(),
    ProductPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Consumer<BottomNavigationbarProvider>(
        builder: (context,provider,child){
          return _pages[provider.currentIndex];
        },
      ),

     bottomNavigationBar: Bottomnavigationbar(),
    );
  }
}
