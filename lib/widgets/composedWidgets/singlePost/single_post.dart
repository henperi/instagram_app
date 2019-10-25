import 'package:flutter/material.dart';
import 'package:instagram_app/widgets/composedWidgets/singlePost/postActions.dart';
import 'package:instagram_app/widgets/composedWidgets/singlePost/postFooter.dart';
import 'package:instagram_app/widgets/composedWidgets/singlePost/post_media.dart';
import 'package:instagram_app/widgets/composedWidgets/singlePost/post_title.dart';

Widget singlePost({post}) {
  // print(post['likesCount']);
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 10.0),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        postHeader(imageUrl: post['profilePic'], userName: post['userName']),
        postMedia(mediaUrl: post['mediaUrl']),
        postActions(),
        postFooter(
          profilePic: post['profilePic'],
          viewsCount: post['viewsCount'],
          likesCount: post['likesCount'],
          commentsCount: post['commentsCount'],
          postCaption: post['postCaption']
        ),
      ],
    ),
  );
}
