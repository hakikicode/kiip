import 'package:flutter/material.dart';
import 'package:kiip/core/app_export.dart';
import 'package:kiip/widgets/app_bar/appbar_iconbutton.dart';
import 'package:kiip/widgets/app_bar/appbar_iconbutton_1.dart';
import 'package:kiip/widgets/app_bar/appbar_title.dart';
import 'package:kiip/widgets/app_bar/custom_app_bar.dart';
import 'package:kiip/widgets/custom_elevated_button.dart';
import 'package:kiip/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class EnterMoneyScreen extends StatelessWidget {
  EnterMoneyScreen({Key? key}) : super(key: key);

  TextEditingController massageboxoneController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            backgroundColor: appTheme.gray100,
            resizeToAvoidBottomInset: false,
            appBar: CustomAppBar(
                leadingWidth: getHorizontalSize(68),
                leading: AppbarIconbutton1(
                    svgPath: ImageConstant.imgLocationOnprimary,
                    margin: getMargin(left: 24, top: 6, bottom: 6),
                    onTap: () {
                      onTapLocationone(context);
                    }),
                centerTitle: true,
                title: AppbarTitle(text: "Money Transfer"),
                actions: [
                  AppbarIconbutton(
                      svgPath: ImageConstant.imgPlus,
                      margin: getMargin(left: 24, top: 6, right: 24, bottom: 6),
                      onTap: () {
                        onTapPlusone(context);
                      })
                ]),
            body: Container(
                width: double.maxFinite,
                padding: getPadding(top: 34, bottom: 34),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CustomImageView(
                          imagePath: ImageConstant.imgEllipse8130x130,
                          height: getSize(130),
                          width: getSize(130),
                          radius: BorderRadius.circular(getHorizontalSize(65))),
                      Padding(
                          padding: getPadding(top: 6),
                          child: Text("Kate Morgan",
                              style: theme.textTheme.headlineMedium)),
                      Padding(
                          padding: getPadding(top: 1),
                          child: Text("159-107-1365",
                              style: theme.textTheme.bodySmall)),
                      Padding(
                          padding: getPadding(top: 25),
                          child: Text("60.00",
                              style: CustomTextStyles.displayLargeBold)),
                      CustomTextFormField(
                          controller: massageboxoneController,
                          margin: getMargin(left: 27, top: 27, right: 27),
                          hintText: "Type Your Massage",
                          hintStyle: CustomTextStyles.bodySmallGray700,
                          textInputAction: TextInputAction.done,
                          contentPadding: getPadding(
                              left: 18, top: 15, right: 18, bottom: 15),
                          borderDecoration:
                              TextFormFieldStyleHelper.outlinePrimaryContainer),
                      Padding(
                          padding: getPadding(left: 27, top: 36, right: 27),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Select Card",
                                    style: theme.textTheme.headlineMedium),
                                Padding(
                                    padding: getPadding(top: 11),
                                    child: Text("Add Card",
                                        style: CustomTextStyles
                                            .titleMediumPrimary))
                              ])),
                      Align(
                          alignment: Alignment.centerRight,
                          child: SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              padding: getPadding(left: 27, top: 20, bottom: 5),
                              child: IntrinsicWidth(
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                    Expanded(
                                        child: Container(
                                            padding: getPadding(
                                                left: 20,
                                                top: 18,
                                                right: 20,
                                                bottom: 18),
                                            decoration: AppDecoration
                                                .gradientPrimaryToGray,
                                            child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Padding(
                                                      padding:
                                                          getPadding(left: 2),
                                                      child: Text(
                                                          "Jonathan Anderson",
                                                          style: CustomTextStyles
                                                              .labelMediumBold)),
                                                  Padding(
                                                      padding: getPadding(
                                                          left: 2, top: 32),
                                                      child: Text(
                                                          "1222 3443 9881 1222",
                                                          style: CustomTextStyles
                                                              .titleSmallOnPrimary)),
                                                  Padding(
                                                      padding:
                                                          getPadding(top: 21),
                                                      child: Row(children: [
                                                        Column(
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .start,
                                                            children: [
                                                              Text("Balance",
                                                                  style: CustomTextStyles
                                                                      .overpassOnPrimary),
                                                              Padding(
                                                                  padding:
                                                                      getPadding(
                                                                          top:
                                                                              2),
                                                                  child: Text(
                                                                      " 31,250",
                                                                      style: theme
                                                                          .textTheme
                                                                          .labelMedium))
                                                            ]),
                                                        CustomImageView(
                                                            svgPath:
                                                                ImageConstant
                                                                    .imgVolume,
                                                            height: getSize(16),
                                                            width: getSize(16),
                                                            margin: getMargin(
                                                                top: 8))
                                                      ]))
                                                ]))),
                                    Expanded(
                                        child: Container(
                                            margin: getMargin(left: 20),
                                            padding: getPadding(
                                                left: 20,
                                                top: 18,
                                                right: 20,
                                                bottom: 18),
                                            decoration: AppDecoration
                                                .gradientTealToTeal,
                                            child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Padding(
                                                      padding:
                                                          getPadding(left: 2),
                                                      child: Text(
                                                          "Jonathan Anderson",
                                                          style: CustomTextStyles
                                                              .labelMediumBold)),
                                                  Padding(
                                                      padding: getPadding(
                                                          left: 2, top: 32),
                                                      child: Text(
                                                          "1222 3443 0881 1222",
                                                          style: CustomTextStyles
                                                              .titleSmallOnPrimary)),
                                                  Padding(
                                                      padding:
                                                          getPadding(top: 21),
                                                      child: Row(children: [
                                                        Column(
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .start,
                                                            children: [
                                                              Text("Balance",
                                                                  style: CustomTextStyles
                                                                      .overpassOnPrimary),
                                                              Padding(
                                                                  padding:
                                                                      getPadding(
                                                                          top:
                                                                              2),
                                                                  child: Text(
                                                                      " 31,250",
                                                                      style: theme
                                                                          .textTheme
                                                                          .labelMedium))
                                                            ]),
                                                        CustomImageView(
                                                            svgPath:
                                                                ImageConstant
                                                                    .imgVolume,
                                                            height: getSize(16),
                                                            width: getSize(16),
                                                            margin: getMargin(
                                                                top: 8))
                                                      ]))
                                                ])))
                                  ]))))
                    ])),
            bottomNavigationBar: CustomElevatedButton(
                text: "continue".toUpperCase(),
                margin: getMargin(left: 27, right: 28, bottom: 29),
                onTap: () {
                  onTapContinue(context);
                })));
  }

  /// Navigates back to the previous screen.
  ///
  /// This function takes a [BuildContext] object as a parameter, which is used
  /// to navigate back to the previous screen.
  onTapLocationone(BuildContext context) {
    Navigator.pop(context);
  }

  /// Navigates to the addPersonScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the addPersonScreen.
  onTapPlusone(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.addPersonScreen);
  }

  /// Navigates to the sendMoneyEnterPasswordScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the sendMoneyEnterPasswordScreen.
  onTapContinue(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.sendMoneyEnterPasswordScreen);
  }
}
