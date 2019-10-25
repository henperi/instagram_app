import 'package:flutter/material.dart';
import 'package:instagram_app/widgets/composedWidgets/image_avatar.dart';

Widget story({String imageUrl, String userName}) {
  return GestureDetector(
    child: Column(
      children: <Widget>[avatar(imageUrl: imageUrl), Text(userName)],
    ),
    onTap: () => print(userName),
  );
}
