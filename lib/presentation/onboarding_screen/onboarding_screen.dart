import 'package:flutter/material.dart';
import 'package:kiip/core/app_export.dart';
import 'package:kiip/widgets/custom_elevated_button.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            backgroundColor: appTheme.gray100,
            body: Container(
                width: double.maxFinite,
                padding: getPadding(left: 36, top: 110, right: 36),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CustomImageView(
                          svgPath: ImageConstant.imgGlobe,
                          height: getSize(80),
                          width: getSize(80)),
                      Padding(
                          padding: getPadding(top: 73),
                          child: Text("Online & Digital",
                              style: CustomTextStyles
                                  .headlineLargeGray900Regular)),
                      Text("Banking", style: theme.textTheme.displayLarge),
                      Container(
                          width: getHorizontalSize(294),
                          margin: getMargin(left: 23, top: 58, right: 23),
                          child: Text(
                              "We help our user to make the right fiance decisioin to make their money safe.",
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.center,
                              style: theme.textTheme.bodyLarge!
                                  .copyWith(height: 1.88))),
                      CustomElevatedButton(
                          text: "Start Now".toUpperCase(),
                          margin: getMargin(top: 27, bottom: 5),
                          buttonTextStyle:
                              CustomTextStyles.titleMediumOnPrimary,
                          onTap: () {
                            onTapStartnow(context);
                          })
                    ]))));
  }

  /// Navigates to the logInScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the logInScreen.
  onTapStartnow(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.logInScreen);
  }
}
