import 'package:flutter/material.dart';
import 'package:image_viewer_flutter/widgets/photos_list.dart';
import 'package:image_viewer_flutter/widgets/search_tile.dart';

class PhotosScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Expanded(
              flex: 1,
              child: SearchTile(),
            ),
            Expanded(
              flex: 2,
              child: PhotosList(),
            ),
          ],
        ),
      ),
    );
  }
}
