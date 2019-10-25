import 'package:flutter/material.dart';

Widget postMedia({@required mediaUrl, mediaType}) {
  return Flexible(
    child: Image.network(mediaUrl),
  );
}
