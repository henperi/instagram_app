import 'package:flutter/material.dart';

import '../image_avatar.dart';

Widget postFooter({
  String profilePic,
  int viewsCount,
  int likesCount,
  int commentsCount,
  String postCaption,
}) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 10),
    child: Column(
      children: <Widget>[
        Row(
          children: <Widget>[
            Text('$viewsCount views',
                style: TextStyle(fontWeight: FontWeight.bold)),
            SizedBox(width: 10),
            Text(
              '$likesCount Likes',
              style: TextStyle(fontWeight: FontWeight.bold),
            )
          ],
        ),
        SizedBox(height: 4),
        Row(
          children: <Widget>[
            Flexible(
              child: Text('$postCaption'),
            ),
          ],
        ),
        SizedBox(height: 6),
        Row(
          children: <Widget>[
            Text(
              'View all $commentsCount comments',
              style: TextStyle(fontWeight: FontWeight.w100),
            )
          ],
        ),
        SizedBox(
          height: 4,
        ),
        Row(
          children: <Widget>[
            avatar(
              imageUrl: profilePic,
              size: 12,
            ),
            SizedBox(width: 10),
            Expanded(
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Add comment',
                  hintStyle: TextStyle(fontSize: 14),
                  border: InputBorder.none,
                ),
              ),
            )
          ],
        ),
        Row(
          children: <Widget>[
            Text('10 hours ago',
                style: TextStyle(fontWeight: FontWeight.w100, fontSize: 10))
          ],
        )
      ],
    ),
  );
}
