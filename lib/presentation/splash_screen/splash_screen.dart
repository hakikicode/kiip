import 'package:flutter/material.dart';
import 'package:kiip/core/app_export.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.gray100,
        body: SizedBox(
          width: double.maxFinite,
          child: CustomImageView(
            svgPath: ImageConstant.imgVector,
            height: getVerticalSize(108),
            width: getHorizontalSize(106),
            alignment: Alignment.center,
          ),
        ),
      ),
    );
  }
}
