import 'package:flutter/material.dart';
import 'package:flutter_getx_statemanagement/resources/assets/image_assets/image_assets.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        // appBar: AppBar(
        //   title: Text('email_hint'.tr),
        // ),
        // floatingActionButton: FloatingActionButton(
        //   onPressed: () {
        //     Utils.toastMessage('rahat');
        //   },
        // ),
        body: Image(
          image: AssetImage(ImageAssets.splashScreen),
        ),
      ),
    );
  }
}
