import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_svg/svg.dart';

class ClinicPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Color(0xFFF0F4FF),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(140),  // Adjust the height to accommodate both the AppBar and SearchBar
        child: AppBar(
          backgroundColor: Color(0xFF00A6FF),
          elevation: 0,
          flexibleSpace: Padding(
            padding: const EdgeInsets.only(top: 40, left: 16, right: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage('assets/images/profile.png'),
                    ),
                    SizedBox(width: 8),
                    Text(
                      "Welcome Back.\nSophia Rose",
                      style: TextStyle(fontSize: 16, color: Colors.white),
                    ),
                    Spacer(),
                    IconButton(
                      style: IconButton.styleFrom(
                          backgroundColor: Colors.white,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)
                          )
                      ),
                      icon: SvgPicture.asset("assets/icons/notification.svg",width: 24,height: 24,color: Colors.grey[700],),
                      onPressed: (){},
                    ),
                    SizedBox(width: 5),
                    IconButton(
                      style: IconButton.styleFrom(
                          backgroundColor: Colors.white,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)
                          )
                      ),
                      icon: SvgPicture.asset("assets/icons/chat.svg",width: 24,height: 24,color: Colors.grey[700],),
                      onPressed: (){},
                    ),
                  ],
                ),
                SizedBox(height: 16),
                // Search Bar inside the AppBar
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 16.0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "Find your suitable doctor!",
                      border: InputBorder.none,
                      icon: SvgPicture.asset("assets/icons/search.svg"),
                      suffixIcon: SvgPicture.asset("assets/icons/filter.svg",color: Colors.blue[200],),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(4.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20),
              // Carousel Slider Section
              CarouselSlider(
                options: CarouselOptions(
                  height: 200,
                  autoPlay: true,
                  autoPlayInterval: Duration(seconds: 3),
                  enlargeCenterPage: true,
                  viewportFraction: 1.0,  // Full width
                ),
                items: [
                  buildCarouselItem(context, "assets/images/slidedoc1.png", screenWidth),
                  buildCarouselItem(context, "assets/images/slidedoc2.png", screenWidth),
                  buildCarouselItem(context, "assets/images/slidedoc3.png", screenWidth),
                ],
              ),
              SizedBox(height: 20),
              // Top Doctors Section
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "Top Doctors",
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text("View All"),
                  ),
                ],
              ),
              SizedBox(height: 10),
              // Top Doctors List
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      DoctorCard(
                        name: "Dr. Taylor Samaro",
                        specialization: "Dental Sargon",
                        imageUrl: "assets/images/doctor2.png",
                      ),
                      DoctorCard(
                        name: "Dr. Iker Bureau",
                        specialization: "Dental Sargon",
                        imageUrl: "assets/images/doctor2.png",
                      ),
                      DoctorCard(
                        name: "Dr. Edson Doe",
                        specialization: "Dental Sargon",
                        imageUrl: "assets/images/doctor2.png",
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20),
              // Available Doctor Section
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "Available Doctors",
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text("View All"),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: GridView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 14,
                    mainAxisSpacing: 12,
                    childAspectRatio: 0.70,  // Reduce the child aspect ratio to fix overflow
                  ),
                  itemCount: 4, // For demonstration, use any number of items
                  itemBuilder: (context, index) {
                    return DoctorOnline(
                      name: "Dr. Edwin Carli",
                      specialization: "MBBS, BCS",
                      imageUrl: "assets/images/doctor2.png",
                    );
                  },
                ),
              ),
              SizedBox(height: 10),  // Add some space at the bottom
            ],
          ),
        ),
      ),
    );
  }

  Widget buildCarouselItem(BuildContext context, String imageUrl, double width) {
    return Container(
      width: width,  // Full width of the screen
      margin: EdgeInsets.symmetric(horizontal: 8.0),
      padding: EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        image: DecorationImage(
          image: AssetImage(imageUrl),
          fit: BoxFit.cover,
        ),
      ),

    );
  }
}

class DoctorCard extends StatelessWidget {
  final String name;
  final String specialization;
  final String imageUrl;

  const DoctorCard({
    Key? key,
    required this.name,
    required this.specialization,
    required this.imageUrl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      margin: EdgeInsets.only(right: 16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),  // Apply rounded corners to the entire card
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 4,
            offset: Offset(2, 2),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.vertical(top: Radius.circular(20)),  // Rounded corners for the image
            child: Image.asset(
              imageUrl,
              width: double.infinity,
              height: 100,
              fit: BoxFit.cover,  // Image fits the container while maintaining aspect ratio
            ),
          ),
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Text(
              name,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Text(
              specialization,
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.grey),
            ),
          ),
          SizedBox(height: 10),
        ],
      ),
    );
  }
}

class DoctorOnline extends StatelessWidget {
  final String name;
  final String specialization;
  final String imageUrl;

  const DoctorOnline({
    Key? key,
    required this.name,
    required this.specialization,
    required this.imageUrl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 180,
      margin: EdgeInsets.only(right: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 4,
            offset: Offset(2, 2),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Online Badge
          Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
                child: Image.asset(
                  imageUrl,
                  width: double.infinity,
                  height: 100,
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                top: 8,
                left: 8,
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                  decoration: BoxDecoration(
                    color: Color(0xFF00C853), // Green color for "ONLINE"
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Text(
                    "ONLINE",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Text(
              name,
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Text(
              specialization,
              style: TextStyle(
                fontSize: 12,
                color: Colors.grey,
              ),
            ),
          ),
          SizedBox(height: 5),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Row(
              children: [
                Icon(Icons.star, color: Colors.amber, size: 14),
                SizedBox(width: 4),
                Text(
                  "4.9 (5,380)",
                  style: TextStyle(fontSize: 12, color: Colors.black),
                ),
                SizedBox(width: 4),
                Icon(Icons.camera, color: Colors.blue, size: 14),
                SizedBox(width: 4),
                Text(
                  "4+ Years",
                  style: TextStyle(fontSize: 12, color: Colors.black),
                ),
              ],
            ),
          ),
          SizedBox(height: 5),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "\$99 Inc.VAT",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Icon(Icons.video_call, color: Colors.blue, size: 20),
              ],
            ),
          ),
          SizedBox(height: 11),
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
              color: Color(0xFF00A6FF), // Button background color
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20)),
            ),
            child: TextButton(
              onPressed: () {},
              child: Text(
                "SEE DOCTOR NOW",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
