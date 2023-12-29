import 'package:flutter/material.dart';
import 'package:kiip/core/app_export.dart';
import 'package:kiip/widgets/custom_elevated_button.dart';
import 'package:kiip/widgets/custom_outlined_button.dart';

class TotalBottomsheet extends StatelessWidget {
  const TotalBottomsheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return Container(
        width: double.maxFinite,
        padding: getPadding(left: 27, top: 15, right: 27, bottom: 15),
        decoration: AppDecoration.bg
            .copyWith(borderRadius: BorderRadiusStyle.customBorderTL40),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                  width: getHorizontalSize(60),
                  child: Divider(color: theme.colorScheme.errorContainer)),
              Padding(
                  padding: getPadding(top: 29),
                  child: Text("Money Transfer",
                      style: theme.textTheme.titleLarge)),
              Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                      padding: getPadding(top: 35, right: 97),
                      child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CustomImageView(
                                imagePath: ImageConstant.imgEllipse890x90,
                                height: getSize(90),
                                width: getSize(90),
                                radius: BorderRadius.circular(
                                    getHorizontalSize(45))),
                            Padding(
                                padding:
                                    getPadding(left: 19, top: 16, bottom: 23),
                                child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text("Kate Morgan",
                                          style:
                                              theme.textTheme.headlineMedium),
                                      Text("159-107-1365",
                                          style: theme.textTheme.bodySmall)
                                    ]))
                          ]))),
              Padding(
                  padding: getPadding(top: 23),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                            padding: getPadding(top: 7, bottom: 7),
                            child: Text("Total",
                                style: CustomTextStyles.bodyLargeGray900)),
                        Text("60.00", style: theme.textTheme.headlineMedium)
                      ])),
              Padding(
                  padding: getPadding(top: 7),
                  child: Divider(color: appTheme.gray200)),
              Padding(
                  padding: getPadding(top: 7),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                            padding: getPadding(top: 7, bottom: 7),
                            child: Text("Vat",
                                style: CustomTextStyles.bodyLargeGray900)),
                        Text("2.00", style: theme.textTheme.headlineMedium)
                      ])),
              Padding(
                  padding: getPadding(top: 7),
                  child: Divider(color: appTheme.gray200)),
              Padding(
                  padding: getPadding(top: 7),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                            padding: getPadding(top: 9, bottom: 8),
                            child: Text("Card New Balance",
                                style: CustomTextStyles.bodyMediumGray900)),
                        Text("1168.25", style: theme.textTheme.headlineMedium)
                      ])),
              Padding(
                  padding: getPadding(top: 7),
                  child: Divider(color: appTheme.gray200)),
              CustomOutlinedButton(
                  height: getVerticalSize(50),
                  text: "From Suzane...",
                  margin: getMargin(top: 54),
                  buttonStyle: CustomButtonStyles.outlinePrimaryContainer,
                  buttonTextStyle: theme.textTheme.bodySmall!),
              CustomElevatedButton(
                  text: "SEND".toUpperCase(),
                  margin: getMargin(top: 40, bottom: 25),
                  onTap: () {
                    onTapSend(context);
                  })
            ]));
  }

  /// Navigates to the paymentSuccessScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the paymentSuccessScreen.
  onTapSend(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.paymentSuccessScreen);
  }
}
