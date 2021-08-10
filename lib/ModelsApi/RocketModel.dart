
class RocketModel{
  String _name;
  bool _active;
  int _stages;
  String _description;
  List<dynamic> _flickr_images;

  String get name=>_name;
  bool get active=>_active;
  int get stages=>_stages;
  String get description=>_description;
  List<dynamic> get flickr_images=>_flickr_images;

  RocketModel.fromJson(dynamic rocketData){
    _name=rocketData['name'];
    _active=rocketData['active'];
    _stages=rocketData['stages'];
    _description=rocketData['description'];
    _flickr_images=rocketData['flickr_images'];
  }

}