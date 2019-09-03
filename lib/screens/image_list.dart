import 'package:flutter/material.dart';
import 'package:image_viewer_flutter/models/photos_data.dart';
import 'package:image_viewer_flutter/models/photos.dart';
import 'package:image_viewer_flutter/widgets/picture_show.dart';

class ImageList extends StatefulWidget {
  @override
  _ImageListState createState() => _ImageListState();
}

class _ImageListState extends State<ImageList> {
  List<Photo> list = [];

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
      list = photos.listPhoto;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: GridView.count(
          crossAxisCount: 2,
          children: List.generate(
            list.length,
            (index) {
              return PictureShow(photo: list[index]);
            },
          ),
        ),
      ),
    );
  }
}
