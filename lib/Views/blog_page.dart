import 'package:flutter/material.dart';
import '../Widgets/custom_appbar.dart';

class BlogPage extends StatelessWidget {
  const BlogPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5, // Number of tabs
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(110), // Increased height for TabBar
          child: AppBar(
            backgroundColor: Colors.pinkAccent, // Maintain pink accent
            title: Text("Blog", style: TextStyle(color: Colors.white)), // White text for contrast
            actions: [
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.chat, color: Colors.white), // White icons
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.call, color: Colors.white),
              ),
            ],
            // Add the TabBar within the AppBar
            bottom: TabBar(
              // Customize TabBar appearance
              indicator: BoxDecoration(
                color: Colors.blueAccent, // Set indicator color
                borderRadius: BorderRadius.circular(30.0),
                shape: BoxShape.rectangle// Add border radius
              ),
              labelColor: Colors.white, // White text for selected tabs
              unselectedLabelColor: Colors.grey[700], // Gray text for unselected tabs
              // Remove isScrollable property
              tabs: [
                Tab(text: 'Home'),
                Tab( text: 'Explore'),
                Tab( text: 'Favorites'),
                Tab( text: 'Setting'),
                Tab( text: 'Profile'),
              ],
            ),
          ),
        ),
        body: TabBarView(
          children: [
            // Content for each tab (replace with your widgets)
            Center(child: Text('Home Tab Content')),
            Center(child: Text('Explore Tab Content')),
            Center(child: Text('Favorites Tab Content')),
            Center(child: Text('Settings Tab Content')),
            Center(child: Text('Profile Tab Content')),
          ],
        ),
      ),
    );
  }
}
