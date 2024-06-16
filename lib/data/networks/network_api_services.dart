import 'dart:convert' as convert;
import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter_getx_statemanagement/data/app_exceptions.dart';
import 'package:flutter_getx_statemanagement/data/networks/base_api_services.dart';
import 'package:http/http.dart' as http;

class NetworkApiServices extends BaseApiServices {
  // to get data from the api
  @override
  Future<dynamic> getApi(String url) async {
    if (kDebugMode) {
      print(url);
    }
    dynamic responseJson;
    try {
      final response =
          await http.get(Uri.parse(url)).timeout(const Duration(seconds: 10));
      responseJson = returnResponse(response);
    } on SocketException {
      throw InternetException();
    } on RequestTimeOut {
      throw RequestTimeOut();
    }
    return responseJson;
  }

  // to post
  @override
  Future<dynamic> postApi(var data, String url) async {
    if (kDebugMode) {
      print(url);
      print(data);
    }
    dynamic responseJson;
    try {
      final response = await http
          .post(Uri.parse(url), body: convert.jsonEncode(data))
          .timeout(
            const Duration(seconds: 10),
          );
      responseJson = returnResponse(response);
    } on SocketException {
      throw InternetException();
    } on RequestTimeOut {
      throw RequestTimeOut();
    }
    return responseJson;
  }

  // checking for data response and it's status code
  dynamic returnResponse(http.Response response) {
    switch (response.statusCode) {
      case 200:
        dynamic responseJson = convert.jsonDecode(response.body);
        return responseJson;
      case 400:
        // throw InvalidUrlException();
        dynamic responseJson = convert.jsonDecode(response.body);
        return responseJson;

      default:
        throw FetchDataExceptions(
            'error while communication with server status code : ${response.statusCode}');
    }
  }
}
