import 'package:flutter/material.dart';
import 'package:mobile_app/Views/blog_detail.dart';

import 'package:mobile_app/Widgets/comment_container.dart';
import 'package:mobile_app/Widgets/customDrawer.dart';
import 'package:mobile_app/Widgets/custom_appbar.dart';
import 'package:mobile_app/Widgets/product_card.dart';

import '../Widgets/bottom_navigationbar.dart';
import '../Widgets/carouselcontainer.dart';
import '../Widgets/categorycard.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(70),
        child: CustomAppBar(
          title:Row(
            children: [
              SizedBox(
                height: 35,
                child: Image.asset(
                  "assets/images/Vector.png",
                  fit: BoxFit.contain,
                ),
              )

            ],
          ),
          actions: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40),
                color: Colors.white,
              ),
              child: IconButton(
                  icon: Image.asset("assets/icons/notification.png"),
                  onPressed: () {}),
            ),
            SizedBox(width: 5),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40),
                color: Colors.white,
              ),
              margin: EdgeInsets.all(5),
              child: IconButton(
                  icon: Image.asset("assets/icons/bookmark.png",),
                  onPressed: () {}),
            ),
          ],
          backgroundColor: Color(0xffF49EC4),

        ),
      ),
      drawer: CustomDrawer(),
      //bottomNavigationBar: Bottomnavigationbar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SliderCarousel(
                imagePaths: [
                  "assets/images/slide1.png",
                  "assets/images/slide2.png",
                  "assets/images/slide3.png",
                ],),
            ),
           Container(
              padding: EdgeInsets.all(10.0),
              margin: EdgeInsets.all(5.0),
              width: 500,
              decoration: BoxDecoration(
              color: Color(0xffFFD8DF),
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
                  color: Color(0xff000000),
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
                  color: Color(0xff064B75),
                  text: 'Doctor Appointment',
                  textColor: Colors.lightBlue[100]!,
                  image:"assets/images/Doctor.png",
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
                        color: Color(0xffF9C0C7),
                        text: 'Check Up',
                        textColor: Colors.black,
                        iconPath:"assets/icons/check_up.png",
                        height: double.infinity, // Adjusted height
                        isRow: true,),
                                ),
                    Expanded(
                        child: _buildGridButton(
                        color: Color(0xff74D1F6),
                        text: 'Clinic',
                        textColor: Colors.blue[900]!,
                          iconPath:"assets/icons/clinic.png",
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
                        color: Color(0xff351238),
                        text: 'Join Us ',
                        textColor: Colors.pink[100]!,
                        height: double.infinity, // Adjusted height
                        isRow: true,
                        ),
                        ),
                        Expanded(
                        child: _buildGridButton(
                          color: Color(0xff14697E),
                          text: 'Hot Line',
                          textColor: Colors.pink[100]!,
                          iconPath:"assets/icons/phone.png",
                          height: double.infinity, // Adjusted height
                          isRow: true,
                        ),),
                        ],),),

                  ],
                        ),

                        ),
              ],
                        ),
                        ),
                        ),
            Container(
              padding: EdgeInsets.all(10.0),
              margin: EdgeInsets.only(top: 8,bottom: 8),
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Colors.white,
                //borderRadius: BorderRadius.circular(16.0),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 2,
                    blurRadius: 2,
                    offset: Offset(0, 0), // changes position of shadow
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
              padding: const EdgeInsets.only(top: 16.0,left: 16,right: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Recent Blogs"),
                  Text("View All")
                ],
              ),
            ),

            SizedBox(height: 10),
            GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => BlogDetailPage()));
              },
              child: Container(
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
                                  "assets/images/Blog.png",
                                  height: 140, // Adjust image height
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


                                child: Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 8),
                                  child: Text(
                                    "ONCE INSERTED, DOES THE IMPLANT MOVE AROUND MY BODY?",
                                    style: TextStyle(
                                      fontSize: 10, // Adjust font size
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                      overflow: TextOverflow.ellipsis
                                    ),
                                    textAlign: TextAlign.center,
                                    maxLines: 2,
                                  ),
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
            ),

            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Popular Products"),
                  Text("View All")
                ],
              ),
            ),

            Container(
              height: 320, // Adjust height as needed
              margin: EdgeInsets.all(10.0),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    ProductCard(
                      imageUrl: "assets/images/dotted.png",
                      title: 'Another Product',
                      price: 1.13,
                      rating: 4.9,
                      reviewCount: 1010,

                    ),

                    SizedBox(width: 10,),

                    ProductCard(
                      imageUrl: "assets/images/banana.png",
                      title: 'Another Product',
                      price: 1.13,
                      rating: 4.9,
                      reviewCount: 1010,

                    ),
                    ProductCard(
                      imageUrl: "assets/images/berry.png",
                      title: 'Another Product',
                      price: 1.13,
                      rating: 4.9,
                      reviewCount: 1010,

                    ),

                    ProductCard(
                      imageUrl: "assets/images/classic.png",
                      title: 'Another Product',
                      price: 1.13,
                      rating: 4.9,
                      reviewCount: 1010,

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
  String? iconPath,  // Use String for custom icon path
  String? image,
  double? height,
  bool isRow = false,
}) {
  return Container(
    height: height ?? 50,
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
            else if (iconPath != null)  // Use iconPath instead of icon
              Image.asset(iconPath, height: 26, fit: BoxFit.cover),
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


