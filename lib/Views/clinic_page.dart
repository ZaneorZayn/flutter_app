import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Widgets/category_button.dart';
import '../Widgets/doctor_class.dart';

class ClinicPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              color: Colors.blue,
              padding: EdgeInsets.all(16.0),
              child: Column(
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        backgroundImage: NetworkImage('https://via.placeholder.com/150'),
                      ),
                      SizedBox(width: 10),
                      Padding(
                        padding: const EdgeInsets.only(top: 60),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Welcome Back,', style: TextStyle(color: Colors.white)),
                            Text('Sophia Rose', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
                          ],
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: 10),
                  TextField(
                    decoration: InputDecoration(
                      hintText: 'Find your suitable doctor!',
                      fillColor: Colors.white,
                      filled: true,
                      prefixIcon: Icon(Icons.search),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30.0),
                        borderSide: BorderSide.none,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.purple,
                  borderRadius: BorderRadius.circular(10),
                ),
                padding: EdgeInsets.all(16.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Find the Right Doctor for you Needs!', style: TextStyle(color: Colors.white)),
                          SizedBox(height: 5),
                          Text('Book Now and Get 30% OFF', style: TextStyle(color: Colors.white)),
                        ],
                      ),
                    ),
                    CircleAvatar(
                      backgroundImage: NetworkImage('https://via.placeholder.com/150'),
                      radius: 30,
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CategoryButton(icon: Icons.person, label: 'Doctor'),
                  CategoryButton(icon: Icons.calendar_today, label: 'Appointment'),
                  CategoryButton(icon: Icons.receipt, label: 'Prescription'),
                  CategoryButton(icon: Icons.local_pharmacy, label: 'Medicine'),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Top Doctors', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                  SizedBox(height: 10),
                  Container(
                    height: 200, // Adjust the height as needed
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        DoctorCard(name: 'Dr. Taylor Samaro', specialty: 'Dental Sargon'),
                        DoctorCard(name: 'Dr. Iker Bureau', specialty: 'Dental Sargon'),
                        DoctorCard(name: 'Dr. Edna Watson', specialty: 'Dental Sargon'),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}


