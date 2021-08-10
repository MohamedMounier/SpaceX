class DragonImages{
  List<dynamic> _flickr_images ;
  List get flickr_images=>_flickr_images;

  DragonImages.fromJson(dynamic json){
    _flickr_images =json['flickr_images'];
    print(_flickr_images);
  }

}