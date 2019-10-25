import 'package:flutter/material.dart';
import 'package:instagram_app/widgets/composedWidgets/storySection/story.dart';

class StorySection extends StatelessWidget {
  getHeightRatio(orientation) {
    if (orientation == Orientation.landscape) {
      return 26;
    } else {
      return 12;
    }
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
      padding: const EdgeInsets.only(left: 1.0),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 10,
        itemBuilder: (context, index) {
          return Stack(
            children: <Widget>[
              Center(
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: story(
                    imageUrl:
                        'https://avatars3.githubusercontent.com/u/36136977?s=460&v=4',
                    userName: 'Henry',
                  ),
                ),
              ),
              Positioned(
                  bottom: 25,
                  right: 0,
                  child: index == 0
                      ? CircleAvatar(
                          child: Icon(Icons.add, size: 18, color: Colors.white, ),
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
