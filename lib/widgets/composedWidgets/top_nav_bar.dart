import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

Widget tonNavBar(
    {@required Widget title,
    Widget leadingActions,
    List<Widget> actions,
    PreferredSizeWidget bottomBar}) {
  final defaultActions = <Widget>[
    Padding(
      padding: const EdgeInsets.only(right: 15.0),
      child: Icon(FontAwesomeIcons.paperPlane),
    )
  ];

  return AppBar(
    title: SizedBox(
      height: 35.0,
      child: Align(child: title, alignment: Alignment.centerLeft),
    ),
    centerTitle: false,
    elevation: 1.0,
    leading: leadingActions ??
        GestureDetector(
          child: Icon(Icons.camera_alt),
        ),
    actions: actions ?? defaultActions,
    bottom: bottomBar ?? null,
  );
}
