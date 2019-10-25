import 'package:flutter/material.dart';
import 'package:instagram_app/widgets/composedWidgets/storySection/story_section.dart';

class HomeBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.vertical,
      children: <Widget>[StorySection()],
    );
  }
}