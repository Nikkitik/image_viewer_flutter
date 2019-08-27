import 'package:image_viewer_flutter/models/photos.dart';
import 'package:image_viewer_flutter/network/networking.dart';

class PhotoData {
  String _flickrURL = "https://farm6.staticflickr.com/";
  String _flickrFormat = "_b.jpg";
  String _apiKey = '20a3023c3e3df4ec356fd20390bdf7cc';

  Future<Photos> getData(String tags) async {
    NetworkHelper networkHelper = NetworkHelper(
        url:
            'https://www.flickr.com/services/rest/?method=flickr.photos.search&api_key=$_apiKey&tags=$tags&format=json&nojsoncallback=1');

    Map data = await networkHelper.getData();
    return Photos.fromJson(data['photos']);
  }

//  String getUrlPicture() =>
//      '$_flickrURL/$serverName/$idName\'_\'$secretName$_flickrFormat';
}
