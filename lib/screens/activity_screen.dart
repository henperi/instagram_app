import 'package:flutter/material.dart';
import 'package:instagram_app/widgets/composedWidgets/bottom_nav_bar.dart';
import 'package:instagram_app/widgets/composedWidgets/top_nav_bar.dart';

class ActivityScreen extends StatelessWidget {
  static final routeName = '/activity';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: tonNavBar(title: Text('Activity'), actions: <Widget>[], leadingActions: null),
      body: Container(),
      bottomNavigationBar: bottomNavBar(context),
    );
  }
}