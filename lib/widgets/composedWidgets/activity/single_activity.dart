import 'package:flutter/material.dart';

import '../image_avatar.dart';

class SingleActivity extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          avatar(
              imageUrl:
                  'https://avatars3.githubusercontent.com/u/36136977?s=460&v=4',
              size: 20),
          SizedBox(width: 14),
          Expanded(
            child: RichText(
              text: TextSpan(
                text:
                    'Lorem ipsum is a dummy text used in prototyping.',
                style: TextStyle(color: Colors.black87),
                children: <TextSpan>[
                  TextSpan(
                    text: ' @bold,',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      color: Colors.blue[400],
                    ),
                  ),
                  TextSpan(text: ' and'),
                  TextSpan(
                    text: ' @bold',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      color: Colors.blue[400],
                    ),
                  ),
                  TextSpan(text: ' are following you!'),
                  TextSpan(
                    text: ' 2 w',
                    style: TextStyle(
                      fontWeight: FontWeight.w100,
                      color: Colors.black45,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: SizedBox(
              width: 80,
              height: 35,
              child: RaisedButton(
                child: Text(
                  'Follow',
                  style: TextStyle(color: Colors.white),
                ),
                onPressed: () {},
                color: Colors.blueAccent,
              ),
            ),
          )
        ],
      ),
    );
  }
}
