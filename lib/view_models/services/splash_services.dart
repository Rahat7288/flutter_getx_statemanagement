import 'dart:async';

import 'package:flutter_getx_statemanagement/resources/routes/routes_name.dart';
import 'package:flutter_getx_statemanagement/view_models/controller/user_preference/user_preference_view_model.dart';
import 'package:get/get.dart';

class SplashServices {
  UserPreference userPreference = UserPreference();

  void isLogin() {
    userPreference.getUser().then((value) {
      if (value.token!.isEmpty || value.token.toString() == null) {
        Timer(
          const Duration(seconds: 3),
          () => Get.toNamed(RoutesName.loginView),
        );
      } else {
        Timer(
          const Duration(seconds: 3),
          () => Get.toNamed(RoutesName.homeView),
        );
      }
    });
  }
}
