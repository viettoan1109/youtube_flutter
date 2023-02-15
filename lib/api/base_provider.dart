import 'package:get/get.dart';
import 'package:youtube_flutter/api/api_constants.dart';
import 'package:youtube_flutter/api/interceptor/auth_interceptor.dart';
import 'package:youtube_flutter/api/interceptor/request_interceptor.dart';
import 'package:youtube_flutter/api/interceptor/respone_interceptor.dart';

class BaseProvider extends GetConnect {
  @override
  void onInit() {
    httpClient.baseUrl = ApiConstants.baseUrl;
    httpClient.addAuthenticator(authInterceptor);
    httpClient.addRequestModifier(requestInterceptor);
    httpClient.addResponseModifier(responeInterceptor);
  }
}
