import 'package:flutter/material.dart';

Widget avatar({@required String imageUrl, double size}) {
  return CircleAvatar(
    maxRadius: size ?? 30,
    backgroundColor: Colors.brown.shade800,
    backgroundImage: NetworkImage(imageUrl),
  );
}
