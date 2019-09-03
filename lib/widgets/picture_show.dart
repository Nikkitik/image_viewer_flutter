import 'package:flutter/material.dart';
import 'package:image_viewer_flutter/models/photos.dart';
import 'package:cached_network_image/cached_network_image.dart';

class PictureShow extends StatelessWidget {
  final Photo photo;

  PictureShow({this.photo});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: CachedNetworkImageProvider(
              'https://farm6.staticflickr.com/${photo.serverName}/${photo.idName}_${photo.secretName}_q.jpg',
            ),
          ),
          color: Colors.white,
          borderRadius: BorderRadius.all(
            Radius.circular(10.0),
          ),
        ),
      ),
    );
  }
}
