import 'package:flutter/material.dart';

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
            icon: Icon(Icons.home),
            onPressed: () => null,
            color: useActiveColor('Home'),
          ),
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () => null,
            color: useActiveColor('Search'),
          ),
          IconButton(
            icon: Icon(Icons.add_box),
            onPressed: () => null,
            color: useActiveColor('Add'),
          ),
          IconButton(
            icon: Icon(Icons.person_outline),
            onPressed: () => null,
            color: useActiveColor('Person'),
          ),
        ],
      ),
    ),
  );
}
