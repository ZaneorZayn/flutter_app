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
      builder:(context,provider,child){
        return Container(
          decoration: BoxDecoration(
            color:Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.2),
                spreadRadius: 1,
                blurRadius: 5,
                offset: Offset(0, -2), // changes position of shadow
              ),
            ],
            borderRadius: BorderRadius.only(topLeft: Radius.circular(35),topRight: Radius.circular(35)),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: GNav(
                gap: 8,

                activeColor: Colors.pinkAccent,
                tabBackgroundColor: Colors.pink[100]!,
                color: Colors.black,
                tabMargin: EdgeInsets.all(10),
                padding: EdgeInsets.all(10),
                selectedIndex: provider.currentIndex,
                onTabChange: (index){
                  provider.setIndex(index);
                },
                tabs: const[
                  GButton(
                    icon: Icons.home,
                    text: "Home",
                  ),

                  GButton(
                    icon: Icons.person,
                    text: "Person",
                  ),

                  GButton(
                    icon: Icons.chat,
                    text: "Chat",
                  ),

                  GButton(
                    icon: Icons.call,
                    text: "Call",
                  ),
                ]
            ),
          ),
        );
      }

    );
  }
}
