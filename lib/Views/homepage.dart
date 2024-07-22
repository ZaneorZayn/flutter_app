import 'package:flutter/material.dart';
import 'package:mobile_app/Widgets/Carouselcontainer.dart';
import 'package:mobile_app/Widgets/comment_container.dart';
import 'package:mobile_app/Widgets/customDrawer.dart';
import 'package:mobile_app/Widgets/custom_appbar.dart';
import 'package:mobile_app/Widgets/product_card.dart';

import '../Widgets/bottom_navigationbar.dart';
import '../Widgets/categorycard.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(65),
        child: CustomAppBar(
          title:"Home",
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
      drawer: CustomDrawer(),
      //bottomNavigationBar: Bottomnavigationbar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            CarouselWidget(
                imageUrls:[
                  "https://plus.unsplash.com/premium_photo-1661281211518-7bc99840fe64?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8ZmFtaWx5fGVufDB8fDB8fHww",
                  "https://images.unsplash.com/photo-1628191013085-990d39ec25b8?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8ZmFtaWx5fGVufDB8fDB8fHww",
                  'https://plus.unsplash.com/premium_photo-1661281339432-2521e2775419?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'


                ]),
           Container(
              padding: EdgeInsets.all(10.0),
              margin: EdgeInsets.all(5.0),
              width: 500,
              decoration: BoxDecoration(
              color: Colors.blueAccent,
              borderRadius: BorderRadius.circular(16.0),
              boxShadow: [
                  BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 5,
                  blurRadius: 7, offset: Offset(0, 3), // changes position of shadow
                  ),
                    ],
                        ),
    child: Text(
    'Your period is likely to start on or around July 29',
    style: TextStyle(
    color: Colors.white,
    fontSize: 15,
    ),
    textAlign: TextAlign.center,
    ),
    ),
    SizedBox(height: 10), // Spacer for separation
    Padding(
    padding: const EdgeInsets.symmetric(horizontal: 10),
    child: Container(
    height: MediaQuery.of(context).size.width / 4, // Adjusted height
    child: Row(
    children: [
    Expanded(
    flex: 4, // This container will take 40% of the width
    child: Container(
    height: double.infinity,
    child: _buildGridButton(
    color: Colors.blue[900]!,
    text: 'Doctor Appointment',
    textColor: Colors.lightBlue[100]!,
    icon: Icons.medical_services,
    image: 'assets/images/Doctor.png', // Assuming you have this image in your assets
    isRow: true,
    ),
    ),
    ),
    Expanded(
    flex: 6, // This column will take 60% of the width
    child: Column(
    children: [
    Expanded(
    child: Row(
    children: [
    Expanded(
    child: _buildGridButton(
    color: Colors.pink[100]!,
    text: 'Check Up',
    textColor: Colors.black,
    icon: Icons.check,
    height: double.infinity, // Adjusted height
    isRow: true,
    ),
    ),
    Expanded(
    child: _buildGridButton(
    color: Colors.lightBlue[100]!,
    text: 'Clinic',
    textColor: Colors.blue[900]!,
    icon: Icons.local_hospital,
    height: double.infinity, // Adjusted height
    isRow: true,
    ),
    ),
    ],
    ),
    ),
    Expanded(
    child: Row(
    children: [
    Expanded(
    child: _buildGridButton(
    color: Colors.deepPurple[900]!,
    text: 'Join the movement ',
    textColor: Colors.pink[100]!,
    height: double.infinity, // Adjusted height
    isRow: true,
    ),
    ),
    Expanded(
    child: _buildGridButton(
      color: Colors.teal[900]!,
      text: 'Hot Line',
      textColor: Colors.pink[100]!,
      icon: Icons.phone,
      height: double.infinity, // Adjusted height
      isRow: true,
    ),
    ),
    ],
    ),
    ),
    ],
    ),
    ),
    ],
    ),
    ),
    ),
            Container(
              padding: EdgeInsets.all(10.0),
              margin: EdgeInsets.all(5.0),
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16.0),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: Offset(0, 3), // changes position of shadow
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Get Answers',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 16),
                  Container(
                    width: MediaQuery.of(context).size.width, // Make the width bounded
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: CategoryCard(
                              imagePath: 'assets/images/SexualHealth.png', // Replace with your asset path
                              title: 'Sexual Health',
                              backgroundColor: Colors.pink[100]!,
                            ),
                          ),
                          SizedBox(width: 17), // Space between cards
                          Expanded(
                            child: CategoryCard(
                              imagePath: 'assets/images/MenstrualHealth.png', // Replace with your asset path
                              title: 'Menstrual Health',
                              backgroundColor: Colors.blue[100]!,
                            ),
                          ),
                          SizedBox(width: 17), // Space between cards
                          Expanded(
                            child: CategoryCard(
                              imagePath: 'assets/images/Contraception.png', // Replace with your asset path
                              title: 'Contraception',
                              backgroundColor: Colors.green[100]!,
                            ),
                          ),
                          SizedBox(width: 17), // Space between cards
                          Expanded(
                            child: CategoryCard(
                              imagePath: 'assets/images/Pregnancy.png', // Replace with your asset path
                              title: 'Pregnancy',
                              backgroundColor: Colors.orange[100]!,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(9.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Recent Blogs"),
                  Text("View All")
                ],
              ),
            ),

            SizedBox(height: 10),
            Container(
              height: 200, // Adjust height as needed
              margin: EdgeInsets.all(10.0),
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: List.generate(
                  10, // Number of items in the list
                      (index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: 250, // Adjust width
                        height: 108, // Adjust height
                        decoration: BoxDecoration(
                          color: Colors.redAccent,
                          borderRadius: BorderRadius.circular(16),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black,
                              blurRadius: 2,
                              offset: Offset(1, 2),
                            ),
                          ],
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(16),
                                topRight: Radius.circular(16),
                              ),
                              child: Image.asset(
                                "assets/images/Pregnancy.png",
                                height: 154, // Adjust image height
                                width: double.infinity,
                                fit: BoxFit.cover,
                              ),
                            ),
                            Spacer(),
                            Container(
                              width: double.infinity,
                              padding: EdgeInsets.symmetric(vertical: 8),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(16),
                                  bottomRight: Radius.circular(16),
                                ),
                              ),


                              child: Text(
                                "jfdfkjdkfjdkfjdksfjkdsfj",
                                style: TextStyle(
                                  fontSize: 10, // Adjust font size
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),

                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(6.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Popular Products"),
                  Text("View All")
                ],
              ),
            ),

            Container(
              height: 285, // Adjust height as needed
              margin: EdgeInsets.all(10.0),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    ProductCard(
                      image: "assets/images/movie1.jpg",
                      title: 'Another Product',
                      price: '\$49.99',
                      rating: "3.8",

                    ),

                    SizedBox(width: 10,),

                    ProductCard(
                      image: "assets/images/movie1.jpg",
                      title: 'Another Product',
                      price: '\$49.99',
                      rating: "3.8",

                    ),
                    ProductCard(

                      image: "assets/images/movie1.jpg",
                      title: 'Another Product',
                      price: '\$49.99',
                      rating: "3.8",

                    ),
                    ProductCard(
                      image: "assets/images/movie1.jpg",
                      title: 'Another Product',
                      price: '\$49.99',
                      rating: "3.8",

                    ),
                  ]
                ),
              ),
            ),

            CommentContainer(
              userName: 'John Doe',
              userAvatarUrl: 'https://www.example.com/avatar1.png', // Replace with actual avatar URL
              commentText: 'This is a sample comment. Great post!',
              commentDate: DateTime.now().subtract(Duration(days: 1)),
              onReplyPressed: () {
                // Handle reply button press
                print('Reply button pressed');
              },
            ),

            CommentContainer(
              userName: 'Jane Smith',
              userAvatarUrl: 'https://images.unsplash.com/photo-1500648767791-00dcc994a43e?q=80&w=1887&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D', // Replace with actual avatar URL
              commentText: 'I really enjoyed this article. Thanks for sharing!',
              commentDate: DateTime.now().subtract(Duration(days: 2)),
              onReplyPressed: () {
                // Handle reply button press
                print('Reply button pressed');
              },
            ),
          ],
        ),
      ),


    );
  }
}
Widget _buildGridButton({
  required Color color,
  required String text,
  required Color textColor,
  IconData? icon,
  String? image,
  double? height,
  bool isRow = false, // New parameter to define the layout direction
}) {
  return Container(
    height: height ?? 50, // Set a fixed height or use provided height
    margin: EdgeInsets.all(5.0),
    decoration: BoxDecoration(
      color: color,
      borderRadius: BorderRadius.circular(12),
    ),
    child: InkWell(
      onTap: () {},
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            if (image != null)
              Image.asset(image, height: 80, fit: BoxFit.cover)
            else
              if (icon != null)
                Icon(icon, color: textColor, size: 26),
            SizedBox(width: 8),
            Expanded(
              child: Text(
                text,
                style: TextStyle(color: textColor, fontSize: 12),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    ),
  );
}

