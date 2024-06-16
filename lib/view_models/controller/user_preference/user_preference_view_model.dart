import 'package:flutter_getx_statemanagement/models/login/login_response_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

class UserPreference {
  Future<bool> saveUser(LoginResponseModel responseModel) async {
    // creating the instance of sharedPreference

    SharedPreferences sp = await SharedPreferences.getInstance();
    // setting up the token
    sp.setString('token', responseModel.token.toString());
    return true;
  }

  Future<LoginResponseModel> getUser() async {
    // creating the instance of sharedPreference

    SharedPreferences sp = await SharedPreferences.getInstance();
    // setting up the token
    String? token = sp.getString('token');
    return LoginResponseModel(token: token);
  }

  Future<bool> removeUser() async {
    // creating the instance of sharedPreference

    SharedPreferences sp = await SharedPreferences.getInstance();
    // setting up the token
    sp.clear();
    return true;
  }
}
