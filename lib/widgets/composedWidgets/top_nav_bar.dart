import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

Widget tonNavBar({
  @required Widget title,
  Widget leadingActions,
  List<Widget> actions,
}) {
  final defaultActions = <Widget>[
    Padding(
      padding: const EdgeInsets.only(right: 15.0),
      child: Icon(FontAwesomeIcons.paperPlane),
    )
  ];

  return AppBar(
    title: SizedBox(
      height: 35.0,
      child: title,
    ),
    centerTitle: true,
    elevation: 1.0,
    leading: leadingActions ?? Icon(Icons.camera_alt),
    actions: actions ?? defaultActions,
  );
}
