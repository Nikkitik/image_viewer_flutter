import 'package:flutter/material.dart';
import 'package:image_viewer_flutter/models/photos.dart';
import 'package:cached_network_image/cached_network_image.dart';

/*
Size Suffixes
The letter suffixes are as follows:

  s	small square 75x75
  q	large square 150x150
  t	thumbnail, 100 on longest side
  m	small, 240 on longest side
  n	small, 320 on longest side
  -	medium, 500 on longest side
  z	medium 640, 640 on longest side
  c	medium 800, 800 on longest side†
  b	large, 1024 on longest side*
  h	large 1600, 1600 on longest side†
  k	large 2048, 2048 on longest side†
  o	original image, either a jpg, gif or png, depending on source format
 */

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
