import 'package:flutter/material.dart';

Widget tonNavBar({
  @required Widget title,
  Widget leadingActions,
  List<Widget> actions,
}) {
  final defaultActions = <Widget>[
    Padding(
      padding: const EdgeInsets.only(right: 15.0),
      child: Icon(Icons.send),
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
