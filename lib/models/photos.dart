class Photos {
  int page;
  int pages;
  List<Photo> listPhoto;

  Photos({this.page, this.pages, this.listPhoto});

  Photos.fromJson(Map<String, dynamic> json)
      : page = json['page'],
        pages = json['pages'],
        listPhoto = (json['photo'] as List)
            ?.map((result) => result == null
                ? null
                : Photo.fromJson(result as Map<String, dynamic>))
            ?.toList();

  Map<String, dynamic> toJson() =>
      <String, dynamic>{'page': page, 'pages': pages, 'photo': listPhoto};
}

class Photo {
  String serverName;
  String idName;
  String secretName;

  Photo({this.idName, this.secretName, this.serverName});

  Photo.fromJson(Map<String, dynamic> json)
      : serverName = json['server'],
        secretName = json['secret'],
        idName = json['id'];

  Map<String, dynamic> toJson() => <String, dynamic>{
        'server': serverName,
        'secret': secretName,
        'id': idName
      };
}
