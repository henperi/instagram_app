import 'package:flutter/material.dart';
import 'package:instagram_app/widgets/composedWidgets/activity/single_activity.dart';
import 'package:instagram_app/widgets/composedWidgets/bottom_nav_bar.dart';
import 'package:instagram_app/widgets/composedWidgets/top_nav_bar.dart';

class ActivityScreen extends StatelessWidget {
  static final routeName = '/activity';

  _getActivities() => ListView.builder(
        padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
        itemCount: 26,
        itemBuilder: (context, index) {
          if (index == 0) {
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Text(
                'This Week',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            );
          }
          if (index == 6) {
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Text(
                'This Month',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            );
          }
          if (index == 16) {
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Text(
                'Earlier',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            );
          }
          return SingleActivity();
        },
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: tonNavBar(
          title: Text('Activity'), actions: <Widget>[], leadingActions: null),
      body: _getActivities(),
      bottomNavigationBar: bottomNavBar(context),
    );
  }
}
