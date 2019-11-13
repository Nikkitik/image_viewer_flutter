import 'package:image_viewer_flutter/models/photos.dart';
import 'package:image_viewer_flutter/network/networking.dart';
import 'package:flutter/foundation.dart';
import 'dart:collection';

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

class PhotoData extends ChangeNotifier {
  String _flickrLargeSquareFormat = "_q.jpg";

  String _apiKey = '20a3023c3e3df4ec356fd20390bdf7cc';

  List<String> _urls = [];

  UnmodifiableListView<String> get urls => UnmodifiableListView(_urls);

  int get urlCount => _urls.length;

  void getPhotosFromTag(String tag) async {
    var photoData = await _getData(tag);

    _urls = photoData.listPhoto.map((photo) => _getUrlPicture(photo)).toList();

    notifyListeners();
  }

  Future<Photos> _getData(String tag) async {
    NetworkHelper networkHelper = NetworkHelper(
      url:
          'https://www.flickr.com/services/rest/?method=flickr.photos.search&api_key=$_apiKey&tags=$tag&format=json&nojsoncallback=1',
    );

    Map data = await networkHelper.getData();
    return Photos.fromJson(data['photos']);
  }

  String _getUrlPicture(Photo photo) =>
      'https://farm${photo.idFarm}.staticflickr.com//${photo.serverName}/${photo.idName}\_${photo.secretName}$_flickrLargeSquareFormat';
}
