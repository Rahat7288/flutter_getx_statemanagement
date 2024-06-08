import 'package:flutter/material.dart';
import 'package:flutter_getx_statemanagement/resources/colors/app_colors.dart';
import 'package:get/get.dart';

class InternetExceptionWidgets extends StatefulWidget {
  const InternetExceptionWidgets({super.key});

  @override
  State<InternetExceptionWidgets> createState() =>
      _InternetExceptionWidgetsState();
}

class _InternetExceptionWidgetsState extends State<InternetExceptionWidgets> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Icon(
              Icons.cloud_off,
              color: AppColors.alertColor,
            ),
            Center(
              child: Text(
                'internet_exception'.tr,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
