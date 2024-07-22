
import 'package:flutter/material.dart';

import '../Widgets/custom_appbar.dart';

class ClinicPage extends StatelessWidget {
  const ClinicPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(65),
        child: CustomAppBar(
          title:"Clinic",
          actions: [
            IconButton(
              onPressed: (){

              },
              icon: Icon(Icons.chat),
            ),
            IconButton(
              onPressed: (){

              },
              icon: Icon(Icons.call),
            ),
          ],
          backgroundColor: Colors.pinkAccent,

        ),
      ),
      backgroundColor: Colors.blue,
    );
  }
}
