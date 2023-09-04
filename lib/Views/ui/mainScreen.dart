import 'package:flutter/material.dart';

import '../shared/bottom_Nav.dart';

class MainScreen extends StatelessWidget {
  MainScreen({super.key});
  List<Widget> pageList = [];

  @override
  Widget build(BuildContext context) {
    int pageIndex = 0;
    return Scaffold(
      backgroundColor: Color(0xFFE2E2E2),
      body: pageList[pageIndex],
      bottomNavigationBar: SafeArea(
          child: Padding(
              padding: EdgeInsets.all(8),
              child: Container(
                padding: EdgeInsets.all(12),
                margin: EdgeInsets.symmetric(horizontal: 10),
                decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.all(Radius.circular(16))),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    BottomNav(
                      onTap: () {},
                      icon: Icons.home,
                    ),
                    BottomNav(
                      onTap: () {},
                      icon: Icons.search,
                    ),
                    BottomNav(
                      onTap: () {},
                      icon: Icons.add,
                    ),
                    BottomNav(
                      onTap: () {},
                      icon: Icons.shopping_cart,
                    ),
                    BottomNav(
                      onTap: () {},
                      icon: Icons.person,
                    ),
                  ],
                ),
              ))),
    );
  }
}
