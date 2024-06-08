import 'package:flutter/material.dart';
import 'package:flutter_getx_statemanagement/resources/colors/app_colors.dart';

class RoundButton extends StatelessWidget {
  const RoundButton({
    super.key,
    this.loading = false,
    required this.title,
    this.height = 50,
    this.width = 60,
    required this.press,
    this.textColor = AppColors.textColorWhite,
    this.buttonColor = AppColors.roundedButtonColor,
  });
  final bool loading;
  final String title;
  final double height, width;
  final VoidCallback press;
  final Color textColor, buttonColor;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: press,
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
          color: buttonColor,
          borderRadius: BorderRadius.circular(15),
        ),
        child: loading
            ? const Center(
                child: CircularProgressIndicator(),
              )
            : Center(
                child: Text(
                  title,
                  style: TextStyle(
                    color: textColor,
                  ),
                ),
              ),
      ),
    );
  }
}
