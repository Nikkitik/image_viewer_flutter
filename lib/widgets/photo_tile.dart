import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class PhotoTile extends StatelessWidget {
  final String url;

  PhotoTile({this.url});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: CachedNetworkImageProvider(url),
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
