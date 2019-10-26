import 'package:flutter/material.dart';
import 'package:instagram_app/mocks/stories.dart';

class SearchBody extends StatefulWidget {
  @override
  _SearchBodyState createState() => _SearchBodyState();
}

class _SearchBodyState extends State<SearchBody> {
  final _media = [...stories];

  populateMedia() {
    _media.addAll(stories);
    _media.shuffle();
  }

  List<Widget> _buildGridTiles(numberOfTiles) {
    return List<Container>.generate(
      numberOfTiles,
      (index) {
        return Container(
          child: Image.network(
            _media[index]['imageUrl'],
            fit: index % 6 == 0 ? BoxFit.none : BoxFit.cover,
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    populateMedia();
    populateMedia();
    populateMedia();
    return GridView.extent(
      maxCrossAxisExtent: 180,
      mainAxisSpacing: 2.0,
      crossAxisSpacing: 2.0,
      children: _buildGridTiles(_media.length),
    );
  }
}
