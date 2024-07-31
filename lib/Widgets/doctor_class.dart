import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DoctorCard extends StatelessWidget {
  final String name;
  final String specialty;

  DoctorCard({required this.name, required this.specialty});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 180, // Adjust the width as needed
      margin: EdgeInsets.symmetric(horizontal: 10),
      child: Card(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 120,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage('https://via.placeholder.com/150'),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(4.0),
                  topRight: Radius.circular(4.0),
                ),
              ),
            ),
            SizedBox(height: 10),
            Text(name, style: TextStyle(fontWeight: FontWeight.bold)),
            Text(specialty),
          ],
        ),
      ),
    );
  }
}