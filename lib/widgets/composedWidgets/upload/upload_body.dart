import 'package:flutter/material.dart';
import 'package:instagram_app/widgets/composedWidgets/search/search.dart';

class UploadBody extends StatefulWidget {
  final selectedImage;
  UploadBody({this.selectedImage});

  @override
  _UploadBodyState createState() => _UploadBodyState();
}

class _UploadBodyState extends State<UploadBody> {
  getHeightRatio(orientation) {
    final defaultHeight = 40;
    if (orientation == Orientation.landscape) {
      return defaultHeight / 1.7;
    } else {
      return defaultHeight;
    }
  }

  @override
  Widget build(BuildContext context) {
    final orientaion = MediaQuery.of(context).orientation;
    final height =
        MediaQuery.of(context).size.height * getHeightRatio(orientaion) / 100;

    final image = widget.selectedImage;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Container(
          height: height,
          color: Colors.black87,
          child: image == null
              ? Center(
                  child: Text(
                  'No image selected.',
                  style: TextStyle(color: Colors.white),
                ))
              : Image.file(
                  image,
                  fit: BoxFit.cover,
                ),
        ),
        Expanded(child: SearchBody())
      ],
    );
  }
}
