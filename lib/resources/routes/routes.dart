import 'package:flutter_getx_statemanagement/resources/routes/routes_name.dart';
import 'package:flutter_getx_statemanagement/view/home_view/home_view.dart';
import 'package:flutter_getx_statemanagement/view/login/login_view.dart';
import 'package:flutter_getx_statemanagement/view/splash_screen.dart';
import 'package:get/get.dart';

class AppRoutes {
  static appRoute() => [
        GetPage(
          name: RoutesName.splashScreen,
          page: () => SplashScreen(),
          transition: Transition.leftToRightWithFade,
        ),
        GetPage(
          name: RoutesName.loginView,
          page: () => LoginView(),
          transition: Transition.leftToRightWithFade,
        ),
        GetPage(
          name: RoutesName.homeView,
          page: () => HomeView(),
          transition: Transition.leftToRightWithFade,
        ),
      ];
}
