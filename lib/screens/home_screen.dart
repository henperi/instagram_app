import 'package:flutter/material.dart';
import 'package:instagram_app/widgets/composedWidgets/bottom_nav_bar.dart';
import 'package:instagram_app/widgets/composedWidgets/home/home.dart';
import 'package:instagram_app/widgets/composedWidgets/top_nav_bar.dart';

class HomeScreen extends StatelessWidget {
  static final routeName = '/home';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: tonNavBar(title: Text('Instagram Clone App'), leadingActions: GestureDetector(
          child: Icon(
            Icons.camera_alt,
          ),
        )),
      body: HomeBody(),
      bottomNavigationBar: bottomNavBar(context),
    );
  }
}