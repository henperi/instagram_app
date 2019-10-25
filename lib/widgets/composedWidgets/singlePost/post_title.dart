import 'package:flutter/material.dart';

import '../image_avatar.dart';

Widget postHeader({String userName, String imageUrl}) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: <Widget>[
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: <Widget>[
            avatar(
              imageUrl: imageUrl,
              size: 16.0,
            ),
            Container(
              width: 10.0,
            ),
            Text(userName),
          ],
        ),
      ),
      Icon(Icons.more_vert)
    ],
  );
}
