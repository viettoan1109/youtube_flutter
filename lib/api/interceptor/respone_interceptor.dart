import 'dart:async';


import 'package:get/get_connect/http/src/request/request.dart';
import 'package:get/get_connect/http/src/response/response.dart';

FutureOr<dynamic> responeInterceptor (Request request, Response response){
  return response;
}