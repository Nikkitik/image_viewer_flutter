import 'package:flutter/material.dart';
import 'package:image_viewer_flutter/widgets/photos_list.dart';

class ImageList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: PhotosList(),
      ),
    );
  }
}
