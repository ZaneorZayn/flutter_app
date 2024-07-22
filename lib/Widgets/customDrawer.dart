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
              child: Image.asset('assets/images/Mengchan.jpg',fit: BoxFit.cover),
            ),
            accountName: const Text("Chan"),
            accountEmail: const Text("mengchan400@gmail.com"),
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
            title: const Text("Profile"),
            onTap: () {
              // Handle Profile tap
            },
          ),
          ListTile(
            leading: const Icon(Icons.settings),
            title: const Text("Settings"),
            onTap: () {
              // Handle Settings tap
            },
          ),
          ListTile(
            leading: const Icon(Icons.logout),
            title: const Text("Logout"),
            onTap: () {
              // Handle Logout tap
            },
          ),
        ],
      ),
    );
  }
}
