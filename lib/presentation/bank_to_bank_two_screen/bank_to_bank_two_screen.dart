import 'package:flutter/material.dart';
import 'package:kiip/core/app_export.dart';
import 'package:kiip/widgets/app_bar/appbar_iconbutton_1.dart';
import 'package:kiip/widgets/app_bar/appbar_title.dart';
import 'package:kiip/widgets/app_bar/custom_app_bar.dart';
import 'package:kiip/widgets/custom_elevated_button.dart';
import 'package:kiip/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class BankToBankTwoScreen extends StatelessWidget {
  BankToBankTwoScreen({Key? key}) : super(key: key);

  TextEditingController priceController = TextEditingController();

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
                title: AppbarTitle(text: "Bank to Bank")),
            body: Container(
                width: double.maxFinite,
                padding: getPadding(left: 47, top: 76, right: 47),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text("Enter The Ammount",
                          style: theme.textTheme.headlineMedium),
                      Padding(
                          padding: getPadding(top: 10),
                          child: Text("Enter ammount you want to send",
                              style: theme.textTheme.bodyMedium)),
                      CustomTextFormField(
                          controller: priceController,
                          margin: getMargin(top: 14),
                          hintText: "500",
                          hintStyle: theme.textTheme.titleLarge!,
                          textInputAction: TextInputAction.done),
                      CustomElevatedButton(
                          text: "Continue".toUpperCase(),
                          margin: getMargin(top: 30, bottom: 5),
                          onTap: () {
                            onTapContinue(context);
                          })
                    ]))));
  }

  /// Navigates back to the previous screen.
  ///
  /// This function takes a [BuildContext] object as a parameter, which is used
  /// to navigate back to the previous screen.
  onTapLocationone(BuildContext context) {
    Navigator.pop(context);
  }

  /// Navigates to the bankToBankThreeScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the bankToBankThreeScreen.
  onTapContinue(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.bankToBankThreeScreen);
  }
}
