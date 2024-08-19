import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
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
          width: double.infinity, // Ensure the container takes the full width
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
          ),
          child: Padding(
            padding: const EdgeInsets.all(6.0),
            child: GNav(
              gap: 8, // Adjust the gap if necessary
              activeColor: Color(0xffC9379D),
              tabBackgroundColor: Color(0xffF6D6EE),
              color: Colors.black,
              padding: EdgeInsets.symmetric(vertical: 20, horizontal: 15), // Increased vertical padding
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
                  leading: SvgPicture.asset(
                    'assets/icons/home.svg',
                    width: 24, // Icon width
                    height: 24, // Icon height
                  ),
                ),
                GButton(
                  icon: Icons.circle,
                  iconColor: Colors.transparent,
                  iconActiveColor: Colors.transparent,
                  text: "Blog",
                  leading: SvgPicture.asset(
                    'assets/icons/blog.svg',
                    width: 24, // Icon width
                    height: 24, // Icon height
                  ),
                ),
                GButton(
                  icon: Icons.circle,
                  iconColor: Colors.transparent,
                  iconActiveColor: Colors.transparent,
                  text: "Clinic",
                  leading: SvgPicture.asset(
                    'assets/icons/clinic.svg',
                    width: 24, // Icon width
                    height: 24, // Icon height
                  ),
                ),
                GButton(
                  icon: Icons.circle,
                  iconColor: Colors.transparent,
                  iconActiveColor: Colors.transparent,
                  text: "Product",
                  leading: SvgPicture.asset(
                    'assets/icons/product.svg',
                    width: 24, // Icon width
                    height: 24, // Icon height
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
