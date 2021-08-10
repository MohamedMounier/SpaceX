class Dragon1Texts {
String _type;
String _name;
bool _active;
List _imagesF;

List get imagesF=>_imagesF;
bool get active => _active;
String get name => _name;
String get type => _type;
Dragon1Texts.fromJson(dynamic json){
  _name=json['name'];
  _type=json['type'];
  _active=json['active'];
  _imagesF=json['flickr_images'];
}



}