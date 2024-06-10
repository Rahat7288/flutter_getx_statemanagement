import 'package:flutter/cupertino.dart';
import 'package:flutter_getx_statemanagement/repository/login_repository/login_repository.dart';
import 'package:flutter_getx_statemanagement/utils/utils.dart';
import 'package:get/get.dart';

class LoginViewModel extends GetxController {
  // creating LoginRepository instance
  final _api = LoginRepository();
  final emailController = TextEditingController().obs;
  final passwordController = TextEditingController().obs;

  final emailFocusNode = FocusNode().obs;
  final passwordFocusNode = FocusNode().obs;

  RxBool loading = false.obs;

  void loginApi() {
    loading.value = true;
    // mapping email and password controller data to data
    Map data = {
      'email': emailController.value.text,
      'password': passwordController.value.text,
    };
    _api.loginApi(data).then((value) {
      loading.value = false;
      Utils.snackBar('login', 'Login Successful');
    }).onError((error, stackTrace) {
      loading.value = false;
      Utils.snackBar('Error', error.toString());
    });
  }
}
