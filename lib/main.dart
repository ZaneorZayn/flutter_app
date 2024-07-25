import 'package:flutter/material.dart';
import 'package:mobile_app/Provider/botnavigation_provider.dart';
import 'package:mobile_app/Views/blog_page.dart';
import 'package:mobile_app/Views/clinic_page.dart';
import 'package:mobile_app/Views/homepage.dart';
import 'package:mobile_app/Views/mainpage.dart';
import 'package:mobile_app/Views/product_page.dart';
import 'package:provider/provider.dart';

void main(){
  runApp(

    MultiProvider(
      providers: [
        ChangeNotifierProvider(
            create: (_) => BottomNavigationbarProvider()),

      ],

      child: MyApp()
  ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainPage(),
    );
  }
}
