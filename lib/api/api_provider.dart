import 'package:get/get_connect/http/src/response/response.dart';
import 'package:youtube_flutter/api/base_provider.dart';
import 'package:youtube_flutter/models/request/video_youtube.dart';

class ApiProvider extends BaseProvider{

  //get
  Future<Response> getVideoYoutube (String path, VideoYoutubeRequest request){
    return get(path, query: request.toJson());
  }
}