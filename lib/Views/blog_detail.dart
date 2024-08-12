import 'package:flutter/material.dart';

import '../Widgets/custom_appbar.dart';

class BlogDetailPage extends StatelessWidget {
  const BlogDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(70),
        child: CustomAppBar(
          title: Row(
            children: [
              SizedBox(
                height: 35,
                child: Image.asset(
                  "assets/images/Vector.png",
                  fit: BoxFit.contain,
                ),
              ),
            ],
          ),
          actions: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40),
                color: Colors.white,
              ),
              child: IconButton(
                  icon: Image.asset("assets/icons/share.png"),
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
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Blog Image with Border Radius
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(12),  // Add border radius here
                child: Image.asset(
                  'assets/images/Blog.png',
                  fit: BoxFit.cover,
                  width: double.infinity,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "ONCE INSERTED, DOES THE IMPLANT MOVE AROUND MY BODY?",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 8),
                  Row(
                    children: [
                      CircleAvatar(
                        backgroundImage: AssetImage('assets/icons/logo.png'),
                        radius: 16,
                      ),
                      SizedBox(width: 8),
                      Text(
                        "By: VIYA Cambodia",
                        style: TextStyle(fontSize: 14, color: Colors.black54),
                      ),
                      Spacer(),
                      Text(
                        "Sexual Health",
                        style: TextStyle(fontSize: 14, color: Colors.black54),
                      ),
                    ],
                  ),
                  SizedBox(height: 8),
                  Text(
                    "Jan 1, 2021 • 3344 views",
                    style: TextStyle(fontSize: 14, color: Colors.black54),
                  ),
                  SizedBox(height: 16),
                  Text(
                    "No, the implant does not move around as it is made to fit into your upper arm. It is a small rod the size of a matchstick and is effective for three years. If you are concerned about your implant, consult a specialist.",
                    style: TextStyle(fontSize: 16),
                  ),
                  SizedBox(height: 16),
                  Text(
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas id sit eu tellus sed cursus eleifend id porta. Fermentum et eget libero lectus. Amet, tellus aliquam, dignissim enim placerat purus nunc, ac ipsum. Ac pretium. Fermentum et eget libero lectus. Amet, tellus aliquam, dignissim enim placerat purus nunc, ac ipsum. Ac pretium.",
                    style: TextStyle(fontSize: 16),
                  ),
                  SizedBox(height: 16),
                  Text(
                    "Related Blogs",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 8),
                  Container(
                    height: 200,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: List.generate(4, (index) {
                        return Padding(
                          padding: const EdgeInsets.only(right: 8.0),
                          child: Container(
                            margin: EdgeInsets.symmetric(horizontal: 12),
                            width: 160,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.5),
                                  spreadRadius: 2,
                                  blurRadius: 7,
                                  offset: Offset(0, 3),
                                ),
                              ],
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(12),
                                      topRight: Radius.circular(12)),
                                  child: Image.asset(
                                    'assets/images/Blog.png',
                                    height: 100,
                                    width: double.infinity,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    "Blog Title $index",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14,
                                    ),
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                                  child: Text(
                                    "Short description or excerpt of the blog post.",
                                    style: TextStyle(fontSize: 12, color: Colors.black54),
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      }),
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
