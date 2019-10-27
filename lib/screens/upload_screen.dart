import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:instagram_app/widgets/composedWidgets/bottom_nav_bar.dart';
import 'package:instagram_app/widgets/composedWidgets/top_nav_bar.dart';
import 'package:instagram_app/widgets/composedWidgets/upload/upload_body.dart';

class UploadScreen extends StatefulWidget {
  static final routeName = '/captureImage';
  @override
  _UploadScreenState createState() => _UploadScreenState();
}

class _UploadScreenState extends State<UploadScreen> {
  File _imageFile;

  Future<void> _pickImage() async {
    File selected = await ImagePicker.pickImage(source: ImageSource.camera);

    setState(() {
      _imageFile = selected;
    });
  }
  /*
  Future<void> _cropImage(source) async{
    File cropped = await ImageCropper.cropImage(
      sourcePath: _imageFile.path,
    );
    
    setState(() {
      _imageFile = cropped ?? _imageFile;
    });
  }

  _clearImage() {
    setState(() {
      _imageFile = null;
    });
  }
  */

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: tonNavBar(title: Text('Gallery')),
      body: UploadBody(selectedImage: _imageFile),
      bottomNavigationBar: bottomNavBar(context),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.white,
        onPressed: _pickImage,
        tooltip: 'Pick Image',
        child: Icon(Icons.add_a_photo, color: Colors.black),
      ),
    );
  }
}
