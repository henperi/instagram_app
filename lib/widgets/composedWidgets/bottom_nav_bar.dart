import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:instagram_app/screens/activity_screen.dart';
import 'package:instagram_app/screens/home_screen.dart';
import 'package:instagram_app/screens/profile_screen.dart';
import 'package:instagram_app/screens/search_screen.dart';
import 'package:instagram_app/screens/upload_screen.dart';
import 'package:line_icons/line_icons.dart';

Widget bottomNavBar(context, {activeTabName}) {
  useActiveColor(String tabName){
    return activeTabName == tabName ? Colors.blueAccent : Colors.black;
  }

  navigateToScreen(routeName) {
    if (routeName != ModalRoute.of(context).settings.name) {
      Navigator.pushNamed(context, routeName);
    }
  }

  return Container(
    height: 50.0,
    alignment: Alignment.center,
    child: BottomAppBar(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          IconButton(
            icon: Icon(LineIcons.home),
            onPressed: () =>  navigateToScreen(HomeScreen.routeName),
            color: useActiveColor('Home'),
          ),
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () => navigateToScreen(SearchScreen.routeName),
            color: useActiveColor('Search'),
          ),
          IconButton(
            icon: Icon(FontAwesomeIcons.plusSquare),
            onPressed: () => navigateToScreen(UploadScreen.routeName),
            color: useActiveColor('Add'),
          ),
          IconButton(
            icon: Icon(FontAwesomeIcons.heart),
            onPressed: () => navigateToScreen(ActivityScreen.routeName),
            color: useActiveColor('Activity'),
          ),
          IconButton(
            icon: Icon(FontAwesomeIcons.user),
            onPressed: () => navigateToScreen(ProfileScreen.routeName),
            color: useActiveColor('Person'),
          ),
        ],
      ),
    ),
  );
}
