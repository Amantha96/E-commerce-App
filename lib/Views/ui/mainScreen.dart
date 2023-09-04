import 'package:ecommerce_app/Views/ui/cartpage.dart';
import 'package:ecommerce_app/Views/ui/profile.dart';
import 'package:ecommerce_app/Views/ui/searchpage.dart';
import 'package:ecommerce_app/controllers/mainscreen_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../shared/bottom_Nav.dart';
import '../shared/bottom_Nav_widget.dart';
import 'homepage.dart';

class MainScreen extends StatelessWidget {
  MainScreen({super.key});
  List<Widget> pageList = [
    HomePage(),
    SearchPage(),
    HomePage(),
    CartPage(),
    ProfilePage()
  ];

  @override
  Widget build(BuildContext context) {
    return Consumer<MainScreenNotifier>(
        builder: (context, mainScreenNotifier, child) {
      return Scaffold(
        backgroundColor: Color(0xFFE2E2E2),
        body: pageList[mainScreenNotifier.pageIndex],
        bottomNavigationBar: BottomNavBar(),
      );
    });
  }
}

