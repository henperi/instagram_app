import 'package:flutter/material.dart';
import 'package:instagram_app/mocks/stories.dart';
import 'package:instagram_app/widgets/composedWidgets/storySection/story.dart';

class StorySection extends StatefulWidget {
  @override
  _StorySectionState createState() => _StorySectionState();
}

class _StorySectionState extends State<StorySection> {
  List _stories = [
    {
      'imageUrl': 'https://avatars3.githubusercontent.com/u/36136977?s=460&v=4',
      'userName': 'Henry',
    },
    ...stories,
  ];

  getHeightRatio(orientation) {
    final defaultHeight = 12.5;
    if (orientation == Orientation.landscape) {
      return defaultHeight * 2;
    } else {
      return defaultHeight;
    }
  }

  populateStories() {
    _stories.addAll(stories);
  }

  @override
  Widget build(BuildContext context) {
    final orientaion = MediaQuery.of(context).orientation;
    final height =
        MediaQuery.of(context).size.height * getHeightRatio(orientaion) / 100;

    return Container(
      height: height,
      color: Colors.blue[50],
      alignment: Alignment.center,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {

          if (index >= _stories.length) {
            populateStories();
          }

          return Stack(
            children: <Widget>[
              Padding(
                padding:  EdgeInsets.fromLTRB(8.0, 6.0, 8, 0),
                child: story(
                  imageUrl: _stories[index]['imageUrl'],
                  userName: _stories[index]['userName'],
                ),
              ),
              Positioned(
                  bottom: 15,
                  right: 0,
                  child: index == 0
                      ? CircleAvatar(
                          child: Icon(
                            Icons.add,
                            size: 18,
                            color: Colors.white,
                          ),
                          radius: 12,
                          backgroundColor: Colors.blueAccent[100],
                        )
                      : Container())
            ],
          );
        },
      ),
    );
  }
}
