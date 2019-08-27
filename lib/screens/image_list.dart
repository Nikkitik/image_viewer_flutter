import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:image_viewer_flutter/models/photos_data.dart';
import 'package:image_viewer_flutter/models/photos.dart';

class ImageList extends StatefulWidget {
  @override
  _ImageListState createState() => _ImageListState();
}

class _ImageListState extends State<ImageList> {
  List<CachedNetworkImage> list = [];

  @override
  void initState() {
    super.initState();
    getPhotoData();
  }

  void getPhotoData() async {
    var photoData = await PhotoData().getData('anime');
    updateUI(photoData);
  }

  void updateUI(Photos photos) {
    setState(() {
      list = photos.listPhoto
          .map((photo) => CachedNetworkImage(
                imageUrl:
                    'https://farm6.staticflickr.com/${photo.serverName}/${photo.idName}_${photo.secretName}_b.jpg',
              ))
          .toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: GridView.count(
          crossAxisCount: 2,
          children: list,
        ),
      ),
    );
  }
}
