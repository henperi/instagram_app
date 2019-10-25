import 'package:flutter/material.dart';

Widget avatar({@required String imageUrl, double size}) {
  return CircleAvatar(
    radius: size ?? 30,
    backgroundColor: Colors.brown.shade800,
    backgroundImage: NetworkImage(imageUrl),
  );
}
