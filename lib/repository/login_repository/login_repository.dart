import 'package:flutter_getx_statemanagement/data/networks/network_api_services.dart';
import 'package:flutter_getx_statemanagement/resources/app_url/app_url.dart';

class LoginRepository {
  final _apiServices = NetworkApiServices();

  Future<dynamic> loginApi(var data) async {
    dynamic response = _apiServices.postApi(data, AppUrl.loginApi);
    return response;
  }
}
