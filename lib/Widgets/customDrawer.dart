import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      width:300,
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.red, Colors.purpleAccent],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
            currentAccountPicture: ClipOval(
              child: Image.asset('assets/images/profile.png',fit: BoxFit.cover),
            ),
            accountName: const Text("Rose"),
            accountEmail: const Text("Rose112@gmail.com"),
          ),
          ListTile(
            leading: Image.asset('assets/icons/home.png',width: 24, height: 24,),
            title: const Text("Home"),
            onTap: () {
              // Handle Home tap
            },
          ),
          ListTile(
            leading: const Icon(Icons.person),
            title: const Text("Our purpose"),
            onTap: () {
              // Handle Profile tap
            },
          ),
          ListTile(
            leading: const Icon(Icons.settings),
            title: const Text("Contact Us"),
            onTap: () {
              // Handle Settings tap
            },
          ),
          ListTile(
            leading: const Icon(Icons.logout),
            title: const Text("Chat"),
            onTap: () {
              // Handle Logout tap
            },
          ),
          ListTile(
            leading: const Icon(Icons.logout),
            title: const Text("Notification"),
            onTap: () {
              // Handle Logout tap
            },
          ),

          ListTile(
            leading: const Icon(Icons.logout),
            title: const Text("Bookmark"),
            onTap: () {
              // Handle Logout tap
            },
          ),

          ListTile(
            leading: const Icon(Icons.logout),
            title: const Text("Profile"),
            onTap: () {
              // Handle Logout tap
            },
          ),


        ],
      ),
    );
  }
}
