class VideoYoutubeRequest {
  int? maxResults;
  String key;
  String regionCode;

  VideoYoutubeRequest({
    required this.maxResults,
    required this.key,
    required this.regionCode,
  });

  Map<String, dynamic> toJson() => {
        "maxResults": maxResults.toString(),
        "key": key.toString(),
        "regionCode": regionCode.toString(),
      };
}
