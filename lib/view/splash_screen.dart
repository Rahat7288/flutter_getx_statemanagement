import 'package:flutter/material.dart';
import 'package:flutter_getx_statemanagement/view_models/services/splash_services.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  SplashServices splashServices = SplashServices();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    splashServices.isLogin();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      // appBar: AppBar(
      //   title: Text('email_hint'.tr),
      // ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: () {
      //     Utils.toastMessage('rahat');
      //   },
      // ),
      // body: InternetExceptionWidgets());
    );
  }
}
