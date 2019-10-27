// import 'dart:io';

import 'package:flutter/material.dart';
import 'package:instagram_app/widgets/composedWidgets/gallery/gallery.dart';

class UploadBody extends StatefulWidget {
  final selectedImage;
  UploadBody({this.selectedImage});

  @override
  _UploadBodyState createState() => _UploadBodyState();
}

class _UploadBodyState extends State<UploadBody> {
  dynamic image;
  var galleryImage = '';

  getHeightRatio(orientation) {
    final defaultHeight = 40;
    if (orientation == Orientation.landscape) {
      return defaultHeight / 1;
    } else {
      return defaultHeight;
    }
  }

  setImagePreview(newImage) {
    image = null;
    setState(() {
      galleryImage = newImage;
      image = null;
    });
  }

  getImagePreview() {
    if (image != null) {
      return Image.file(
        image,
        fit: BoxFit.cover,
      );
    }
    if (galleryImage != '') {
      return Image.network(galleryImage);
    } else {
      return Center(
        child: Text(
          'No image selected.',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    final orientaion = MediaQuery.of(context).orientation;
    final height =
        MediaQuery.of(context).size.height * getHeightRatio(orientaion) / 100;
    image = widget.selectedImage;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Container(
          height: height,
          color: Colors.black87,
          child: getImagePreview(),
        ),
        Expanded(
          child: Gallery(
            setImagePreview: setImagePreview,
          ),
        ),
      ],
    );
  }
}
