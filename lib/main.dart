import 'package:flutter/material.dart';
import 'package:image_viewer_flutter/screens/photos_screen.dart';
import 'package:provider/provider.dart';
import 'package:image_viewer_flutter/models/photos_data.dart';

void main() => runApp(ImageViewerApp());

class ImageViewerApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      child: MaterialApp(
        home: ImageList(),
      ),
      builder: (context) => PhotoData(),
    );
  }
}
