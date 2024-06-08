import 'package:flutter_getx_statemanagement/resources/routes/routes_name.dart';
import 'package:flutter_getx_statemanagement/view/splash_screen.dart';
import 'package:get/get.dart';

class AppRoutes {
  static appRoute() => [
        GetPage(
          name: RoutesName.splashScreen,
          page: () => SplashScreen(),
          transition: Transition.leftToRightWithFade,
        ),
      ];
}
