import 'package:flutter/material.dart';

import '../image_avatar.dart';

Widget postHeader() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: <Widget>[
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: <Widget>[
            avatar(
              imageUrl:
                  'https://qph.fs.quoracdn.net/main-qimg-8c5ea2930025b21f9a394cf0a3b95759',
              size: 16.0,
            ),
            Container(
              width: 10.0,
            ),
            Text('Dwayne Johnson'),
          ],
        ),
      ),
      Icon(Icons.more_vert)
    ],
  );
}
