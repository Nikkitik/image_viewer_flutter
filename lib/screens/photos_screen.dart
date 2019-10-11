import 'package:flutter/material.dart';
import 'package:image_viewer_flutter/widgets/photos_list.dart';
import 'package:provider/provider.dart';
import 'package:image_viewer_flutter/models/photos_data.dart';

class PhotosScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Provider.of<PhotoData>(context).getPhotosFromTag('anime');

    return Scaffold(
      body: SafeArea(
        child: PhotosList(),
      ),
    );
  }
}
