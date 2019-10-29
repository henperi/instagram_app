import 'package:flutter/material.dart';

Widget avatar({@required String imageUrl, double size}) {
  return CircleAvatar(
    maxRadius: size ?? 30,
    backgroundColor: Colors.grey,
    backgroundImage: NetworkImage(imageUrl),
  );
}
