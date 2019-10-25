import 'package:flutter/material.dart';
import 'package:instagram_app/widgets/composedWidgets/singlePost/single_post.dart';
import 'package:instagram_app/widgets/composedWidgets/storySection/story_section.dart';
import '../../../mocks/user_posts.dart';

class HomeBody extends StatefulWidget {
  // List posts =
  @override
  _HomeBodyState createState() => _HomeBodyState();
}

class _HomeBodyState extends State<HomeBody> {
  final List posts = [
    {
      'likesCount': '',
      'viewsCount': '',
      'commentsCount': '',
      'userName': '',
      'profilePic': '',
      'mediaUrl': '',
      'postCaption': '',
    },
  ];

  populateList() {
    posts.addAll(userPosts);
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.vertical,
      itemBuilder: (context, index) {
        if (index >= posts.length) {
          populateList();
        }

        return Column(
          children: <Widget>[
            index == 0 ? StorySection() : singlePost(post: posts[index]),
          ],
        );
      },
    );
  }
}
