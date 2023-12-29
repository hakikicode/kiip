import 'package:flutter/material.dart';
import 'package:kiip/core/app_export.dart';
import 'package:kiip/widgets/custom_elevated_button.dart';
import 'package:kiip/widgets/custom_outlined_button.dart';
import 'package:kiip/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class SignUpScreen extends StatelessWidget {
  SignUpScreen({Key? key}) : super(key: key);

  TextEditingController phoneController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  TextEditingController confirmpasswordController = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            backgroundColor: appTheme.gray100,
            resizeToAvoidBottomInset: false,
            body: Form(
                key: _formKey,
                child: Container(
                    width: double.maxFinite,
                    padding:
                        getPadding(left: 27, top: 40, right: 27, bottom: 40),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          CustomImageView(
                              svgPath: ImageConstant.imgGlobe,
                              height: getSize(80),
                              width: getSize(80),
                              alignment: Alignment.center),
                          Padding(
                              padding: getPadding(top: 61),
                              child: Text("Phone or Email",
                                  style: CustomTextStyles.bodyLargeGray700)),
                          CustomTextFormField(
                              controller: phoneController,
                              margin: getMargin(top: 5),
                              hintText: "Email",
                              hintStyle: CustomTextStyles.bodyLargeGray70018,
                              textInputType: TextInputType.emailAddress,
                              prefix: Container(
                                  margin: getMargin(
                                      left: 25, top: 24, right: 10, bottom: 24),
                                  child: CustomImageView(
                                      svgPath: ImageConstant.imgArrowdown)),
                              prefixConstraints: BoxConstraints(
                                  maxHeight: getVerticalSize(72)),
                              contentPadding:
                                  getPadding(top: 24, right: 30, bottom: 24),
                              borderDecoration: TextFormFieldStyleHelper
                                  .outlinePrimaryContainer),
                          Padding(
                              padding: getPadding(top: 25),
                              child: Text("Set Password",
                                  style: CustomTextStyles.bodyLargeGray700)),
                          CustomTextFormField(
                              controller: passwordController,
                              margin: getMargin(top: 9),
                              hintText: "Set Password",
                              hintStyle: CustomTextStyles.bodyLargeGray70018,
                              textInputType: TextInputType.visiblePassword,
                              prefix: Container(
                                  margin: getMargin(
                                      left: 25, top: 24, right: 10, bottom: 24),
                                  child: CustomImageView(
                                      svgPath: ImageConstant.imgLock)),
                              prefixConstraints: BoxConstraints(
                                  maxHeight: getVerticalSize(72)),
                              obscureText: true,
                              contentPadding:
                                  getPadding(top: 24, right: 30, bottom: 24),
                              borderDecoration: TextFormFieldStyleHelper
                                  .outlinePrimaryContainer),
                          Padding(
                              padding: getPadding(top: 25),
                              child: Text("Confirm Password",
                                  style: CustomTextStyles.bodyLargeGray700)),
                          CustomTextFormField(
                              controller: confirmpasswordController,
                              margin: getMargin(top: 9),
                              hintText: "Confirm Password",
                              hintStyle: CustomTextStyles.bodyLargeGray70018,
                              textInputAction: TextInputAction.done,
                              textInputType: TextInputType.visiblePassword,
                              prefix: Container(
                                  margin: getMargin(
                                      left: 28, top: 24, right: 10, bottom: 24),
                                  child: CustomImageView(
                                      svgPath: ImageConstant.imgLock)),
                              prefixConstraints: BoxConstraints(
                                  maxHeight: getVerticalSize(72)),
                              obscureText: true,
                              contentPadding:
                                  getPadding(top: 24, right: 30, bottom: 24),
                              borderDecoration: TextFormFieldStyleHelper
                                  .outlinePrimaryContainer),
                          CustomElevatedButton(
                              height: getVerticalSize(72),
                              text: "Sign Up",
                              margin: getMargin(top: 41),
                              buttonTextStyle: CustomTextStyles
                                  .titleMediumOnPrimarySemiBold18),
                          CustomOutlinedButton(
                              text: "Sign up with Google",
                              margin: getMargin(top: 40),
                              leftIcon: Container(
                                  margin: getMargin(right: 16),
                                  child: CustomImageView(
                                      svgPath: ImageConstant.imgGoogle))),
                          Align(
                              alignment: Alignment.center,
                              child: Padding(
                                  padding: getPadding(top: 34, bottom: 5),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Padding(
                                            padding: getPadding(bottom: 2),
                                            child: Text("Have Account?",
                                                style: CustomTextStyles
                                                    .titleLargeBluegray700)),
                                        GestureDetector(
                                            onTap: () {
                                              onTapTxtSignin(context);
                                            },
                                            child: Padding(
                                                padding:
                                                    getPadding(left: 8, top: 2),
                                                child: Text("Sign in",
                                                    style: CustomTextStyles
                                                        .titleLargePrimary)))
                                      ])))
                        ])))));
  }

  /// Navigates to the logInScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the logInScreen.
  onTapTxtSignin(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.logInScreen);
  }
}
