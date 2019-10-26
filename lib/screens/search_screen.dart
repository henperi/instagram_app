import 'package:flutter/material.dart';
import 'package:instagram_app/widgets/composedWidgets/bottom_nav_bar.dart';
import 'package:instagram_app/widgets/composedWidgets/search/search.dart';
import 'package:instagram_app/widgets/composedWidgets/top_nav_bar.dart';

class SearchScreen extends StatelessWidget {
  static final String routeName = '/search';

  final Widget title = Row(
    children: <Widget>[
      Expanded(
        child: TextField(
          decoration: InputDecoration(
            hintText: 'Search',
            hintStyle: TextStyle(fontSize: 18),
            border: InputBorder.none,
          ),
        ),
      ),
    ],
  );

  final Widget bottomBar = PreferredSize(
    child: Expanded(
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 10,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: RaisedButton(
              child: Text('data'),
              onPressed: () => null,
              elevation: 4.0,
              color: Colors.white,
            ),
          );
        },
      ),
    ),
    preferredSize: Size(10, 20),
  );

  final actions = <Widget>[
    Padding(
      padding: const EdgeInsets.only(right: 15.0),
      child: Icon(Icons.center_focus_weak),
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: tonNavBar(
        title: title,
        leadingActions: Icon(Icons.search),
        bottomBar: bottomBar,
        actions: actions 
      ),
      body: SearchBody(),
      bottomNavigationBar: bottomNavBar(context),
    );
  }
}
