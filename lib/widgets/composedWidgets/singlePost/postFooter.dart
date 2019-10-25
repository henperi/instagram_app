import 'package:flutter/material.dart';

import '../image_avatar.dart';

Widget postFooter() {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 10),
    child: Column(
      children: <Widget>[
        Row(
          children: <Widget>[
            Text('54,000 views', style: TextStyle(fontWeight: FontWeight.bold)),
            SizedBox(width: 10),
            Text(
              '54,000 Likes',
              style: TextStyle(fontWeight: FontWeight.bold),
            )
          ],
        ),
        SizedBox(height: 4),
        Row(
          children: <Widget>[
            Flexible(
              child: Text(
                  'Will Smith is my buddy, he came to visit my son when he was sick...'),
            ),
          ],
        ),
        SizedBox(height: 6),
        Row(
          children: <Widget>[
            Text(
              'View all 12 comments',
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
              imageUrl:
                  'https://s.hdnux.com/photos/51/23/24/10827008/3/920x920.jpg',
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
