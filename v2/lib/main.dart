import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

void main() {
//  runApp(MaterialApp(
//    home: GpsDemo(),
//  ));
//runApp(MaterialApp(
//  home:AnimationDemo()
//));
  runApp(MaterialApp(
    home: CameraExample(),
  ));
}

class CameraExample extends StatefulWidget {
  @override
  _CameraExampleState createState() => _CameraExampleState();
}

class _CameraExampleState extends State<CameraExample> {
  File img;

  Future loadImage(bool isCamera) async {
    File image;
    if (isCamera) {
      image = await ImagePicker.pickImage(source: ImageSource.camera);
    } else {
      image = await ImagePicker.pickImage(source: ImageSource.gallery);
    }
    setState(() {
      img = image;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Camera Example'),
        elevation: 10,
        leading: Icon(Icons.camera),
      ),
      body: Container(
        margin: EdgeInsets.all(10),
        child: Column(
          children: <Widget>[
            RaisedButton(
              color: Colors.green,
              onPressed: () {
                loadImage(true);
              },
              child: Text(
                'Camera',
                style: TextStyle(fontSize: 30),
              ),
            ),
            RaisedButton(
              color: Colors.lightBlue,
              onPressed: () {
                loadImage(false);
              },
              child: Text(
                'Gallery',
                style: TextStyle(fontSize: 30),
              ),
            ),
            img == null
                ? Container()
                : Image.file(
                    img,
                    height: 300,
                    width: 300,
                  )
          ],
        ),
      ),
    );
  }
}
