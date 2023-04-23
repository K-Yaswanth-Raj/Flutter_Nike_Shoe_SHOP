// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class MyBottomNavBar extends StatelessWidget {
  void Function(int)? onTabChange;
  MyBottomNavBar({
    Key? key,
    required this.onTabChange,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        child: GNav(
          mainAxisAlignment: MainAxisAlignment.center,
          activeColor: Colors.grey[850],
          tabActiveBorder: Border.all(color: Colors.grey.shade600),
          tabBackgroundColor: Colors.grey.shade200,
          tabBorderRadius: 16,
          onTabChange: (value) => onTabChange!(value),
          tabs: [
            GButton(
              icon: Icons.home,
              padding: EdgeInsets.all(22),
              gap: 10.0,
              margin: EdgeInsets.all(10),
              text: 'Shop',
            ),
            GButton(
              icon: Icons.shopping_bag_rounded,
              padding: EdgeInsets.all(22),
              margin: EdgeInsets.all(10),
              gap: 10.0,
              text: 'Cart',
            ),
          ],
        ),
      ),
    );
  }
}
