import 'package:flutter/material.dart';
import 'package:image_viewer_flutter/models/photos_data.dart';
import 'package:provider/provider.dart';

class SearchTile extends StatelessWidget {
  final searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        SizedBox(
          height: 10.0,
        ),
        Row(
          children: <Widget>[
            SizedBox(
              width: 40.0,
            ),
            Text(
              'Explore',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 40.0,
              ),
            ),
          ],
        ),
        Padding(
          child: Row(
            children: <Widget>[
              Expanded(
                child: TextField(
                  controller: searchController,
                  maxLength: 33,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Search',
                    counter: Offstage(),
                  ),
                ),
              ),
              IconButton(
                icon: Icon(Icons.search),
                onPressed: () {
                  Provider.of<PhotoData>(context)
                      .getPhotosFromTag(searchController.text);
                },
              ),
            ],
          ),
          padding: const EdgeInsets.only(left: 40.0, right: 20.0),
        ),
      ],
    );
  }
}
