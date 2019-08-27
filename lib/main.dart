import 'package:flutter/material.dart';
import 'package:image_viewer_flutter/screens/image_list.dart';

void main() => runApp(ImageViewerApp());

class ImageViewerApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ImageList(),
    );
  }
}
