class LaunchesData{
  String _name;
  String _smallImg;
  String _date_local;
  String _details;

  String get name=> _name;
  String get smallImg=>_smallImg;
  String get date_local=>_date_local;
  String get details=>_details;

  LaunchesData.fromJson(dynamic json){
    _name=json['name'];
    _date_local=json['date_local'];
    _smallImg=json['links']['patch']['small'];
    _details=json['details'];
  }

}