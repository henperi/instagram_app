import 'package:flutter/material.dart';
import 'package:instagram_app/widgets/composedWidgets/singlePost/postActions.dart';
import 'package:instagram_app/widgets/composedWidgets/singlePost/postFooter.dart';
import 'package:instagram_app/widgets/composedWidgets/singlePost/post_media.dart';
import 'package:instagram_app/widgets/composedWidgets/singlePost/post_title.dart';

Widget singlePost({String imageUrl, String userName}) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 10.0),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        postHeader(),
        postMedia(),
        postActions(),
        postFooter(),
      ],
    ),
  );
}
