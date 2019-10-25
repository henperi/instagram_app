import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:line_icons/line_icons.dart';

Widget bottomNavBar({activeTabName}) {
  useActiveColor(String tabName){
    return activeTabName == tabName ? Colors.blueAccent : Colors.black;
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
            onPressed: () => null,
            color: useActiveColor('Home'),
          ),
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () => null,
            color: useActiveColor('Search'),
          ),
          IconButton(
            icon: Icon(FontAwesomeIcons.plusSquare),
            onPressed: () => null,
            color: useActiveColor('Add'),
          ),
          IconButton(
            icon: Icon(FontAwesomeIcons.user),
            onPressed: () => null,
            color: useActiveColor('Person'),
          ),
        ],
      ),
    ),
  );
}
