import 'package:flutter/material.dart';
import 'package:instagram_app/widgets/composedWidgets/singlePost/single_post.dart';
import 'package:instagram_app/widgets/composedWidgets/storySection/story_section.dart';

class HomeBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.vertical,
      itemCount: 10,
      itemBuilder: (context, index) {
        return Column(
          children: <Widget>[
            index == 0 ? StorySection() :
            singlePost(),
          ],
        );
      },
    );
  }
}
