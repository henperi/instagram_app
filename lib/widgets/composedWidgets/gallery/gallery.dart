import 'package:flutter/material.dart';
import 'package:instagram_app/mocks/stories.dart';

class Gallery extends StatelessWidget {
  final galleryImages = [...stories, ...stories, ...stories, ...stories];
  final setImagePreview;

  Gallery({@required this.setImagePreview});

  populateMedia() {
    galleryImages.addAll(stories);
  }

  List<Widget> _buildGridTiles(numberOfTiles) {
    return List<Container>.generate(
      numberOfTiles,
      (index) {
        return Container(
          child: GestureDetector(
            onTap: () => setImagePreview(galleryImages[index]['imageUrl']),
            child: Image.network(
              galleryImages[index]['imageUrl'],
              fit: index % 11 == 0 ? BoxFit.none : BoxFit.cover,
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return GridView.extent(
      maxCrossAxisExtent: 120,
      mainAxisSpacing: 2.0,
      crossAxisSpacing: 2.0,
      children: _buildGridTiles(galleryImages.length),
    );
  }
}
