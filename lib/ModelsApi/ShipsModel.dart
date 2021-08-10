class ShipsModel{
  String _name;
  String _details;
  String _imageSmall;
  bool _succ;


  String get name=>_name;
  String get details=>_details;
  String get imageSmall=>_imageSmall;
  bool get succ=>_succ;

  ShipsModel.fromJson(dynamic json){
    _name=json['name'];
    _details=json['details'];
    _imageSmall=json['links']['patch']['small'];
    _succ=json['success'];

  }
}
