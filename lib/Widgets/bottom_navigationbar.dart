import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:mobile_app/Provider/botnavigation_provider.dart';
import 'package:provider/provider.dart';

class Bottomnavigationbar extends StatelessWidget {
  const Bottomnavigationbar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Consumer<BottomNavigationbarProvider>(
      builder: (context, provider, child) {
        return Container(
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.2),
                spreadRadius: 1,
                blurRadius: 5,
                offset: Offset(0, -2), // changes position of shadow
              ),
            ],
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(35),
              topRight: Radius.circular(35),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: GNav(
              gap: 8,
              activeColor: Color(0xffC9379D),
              tabBackgroundColor: Color(0xffF6D6EE),
              color: Colors.black,
              tabMargin: EdgeInsets.all(10),
              padding: EdgeInsets.all(10),
              selectedIndex: provider.currentIndex,
              onTabChange: (index) {
                provider.setIndex(index);
              },
              tabs: [
                GButton(
                  icon: Icons.circle, // Use any default icon
                  iconColor: Colors.transparent, // Make it transparent
                  iconActiveColor: Colors.transparent, // Keep it transparent in active state
                  text: "Home",
                  leading: Image.asset(
                    'assets/icons/home1.png',
                    width: 24,
                    height: 24,
                  ),
                ),
                GButton(
                  icon: Icons.circle,
                  iconColor: Colors.transparent,
                  iconActiveColor: Colors.transparent,
                  text: "Blog",
                  leading: Image.asset(
                    'assets/icons/blog.png',
                    width: 24,
                    height: 24,
                  ),
                ),
                GButton(
                  icon: Icons.circle,
                  iconColor: Colors.transparent,
                  iconActiveColor: Colors.transparent,
                  text: "Clinic",
                  leading: Image.asset(
                    'assets/icons/clinic.png',
                    width: 24,
                    height: 24,
                  ),
                ),
                GButton(
                  icon: Icons.circle,
                  iconColor: Colors.transparent,
                  iconActiveColor: Colors.transparent,
                  text: "Product",
                  leading: Image.asset(
                    'assets/icons/product.png',
                    width: 24,
                    height: 24,
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
