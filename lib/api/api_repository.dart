import 'package:youtube_flutter/api/api_provider.dart';
import 'package:youtube_flutter/models/request/video_youtube.dart';
import 'package:youtube_flutter/models/response/video_youtube_response.dart';

class ApiRepository {
  ApiRepository({required this.apiProvider});

  final ApiProvider apiProvider;

  Future<List<Item>> getVideoYoutube({
    required int maxResults,
    required String key,
    required String regionCode,
  }) async {
    var res = await apiProvider.getVideoYoutube(
        "videos?part=snippet,contentDetails,statistics&chart=mostPopular",
        VideoYoutubeRequest(
          maxResults: maxResults,
          key: key,
          regionCode: regionCode,
        ));

    if (res != null) {
      VideoYoutubeResponse videoYoutubeResponse = VideoYoutubeResponse.fromJson(res.body);
      return (videoYoutubeResponse.items ?? []).map((e) => e.snippet!).toList();
    }  
    return [];
  }
}
