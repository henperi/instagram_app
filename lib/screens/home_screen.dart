import 'package:flutter/material.dart';
import 'package:instagram_app/widgets/composedWidgets/bottom_nav_bar.dart';
import 'package:instagram_app/widgets/composedWidgets/home/home.dart';
import 'package:instagram_app/widgets/composedWidgets/top_nav_bar.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: tonNavBar(title: Text('Instagram Clone App')),
      body: HomeBody(),
      bottomNavigationBar: bottomNavBar(),
    );
  }
}