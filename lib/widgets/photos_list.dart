import 'package:flutter/material.dart';
import 'package:image_viewer_flutter/models/photos_data.dart';
import 'package:provider/provider.dart';
import 'package:image_viewer_flutter/widgets/photo_tile.dart';

class PhotosList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<PhotoData>(
      builder: (context, photoData, child) {
        return GridView.builder(
          itemCount: photoData.urlCount,
          gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
          itemBuilder: (context, index) {
            return PhotoTile(url: photoData.urls[index]);
          },
        );
      },
    );
  }
}
