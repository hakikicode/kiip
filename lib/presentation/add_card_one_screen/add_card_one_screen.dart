import 'package:flutter/material.dart';
import 'package:kiip/core/app_export.dart';
import 'package:kiip/widgets/app_bar/appbar_iconbutton_1.dart';
import 'package:kiip/widgets/app_bar/appbar_title.dart';
import 'package:kiip/widgets/app_bar/custom_app_bar.dart';
import 'package:kiip/widgets/custom_checkbox_button.dart';
import 'package:kiip/widgets/custom_elevated_button.dart';
import 'package:kiip/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class AddCardOneScreen extends StatelessWidget {
  AddCardOneScreen({Key? key}) : super(key: key);

  TextEditingController nameController = TextEditingController();

  TextEditingController cardNumberController = TextEditingController();

  TextEditingController dateController = TextEditingController();

  TextEditingController cvvController = TextEditingController();

  bool savemycarddetai = false;

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

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
                title: AppbarTitle(text: "New Card")),
            body: Form(
                key: _formKey,
                child: Container(
                    width: double.maxFinite,
                    padding:
                        getPadding(left: 27, top: 30, right: 27, bottom: 30),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text("Name", style: theme.textTheme.bodyLarge),
                          CustomTextFormField(
                              controller: nameController,
                              margin: getMargin(top: 5),
                              hintText: "User Name",
                              hintStyle:
                                  CustomTextStyles.bodyLargePrimaryContainer),
                          Padding(
                              padding: getPadding(top: 25),
                              child: Text("Card Number",
                                  style: theme.textTheme.bodyLarge)),
                          CustomTextFormField(
                              controller: cardNumberController,
                              margin: getMargin(top: 5),
                              hintText: "Card Number",
                              hintStyle:
                                  CustomTextStyles.bodyLargePrimaryContainer,
                              textInputType: TextInputType.number),
                          Padding(
                              padding: getPadding(top: 25),
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Expanded(
                                        child: Padding(
                                            padding:
                                                getPadding(top: 1, right: 12),
                                            child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  Text("Expires",
                                                      style: theme
                                                          .textTheme.bodyLarge),
                                                  CustomTextFormField(
                                                      width: getHorizontalSize(
                                                          168),
                                                      controller:
                                                          dateController,
                                                      margin: getMargin(top: 3),
                                                      hintText: "Date",
                                                      hintStyle: CustomTextStyles
                                                          .bodyLargePrimaryContainer)
                                                ]))),
                                    Expanded(
                                        child: Padding(
                                            padding: getPadding(left: 12),
                                            child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  Text("CVV",
                                                      style: theme
                                                          .textTheme.bodyLarge),
                                                  CustomTextFormField(
                                                      width: getHorizontalSize(
                                                          168),
                                                      controller: cvvController,
                                                      margin: getMargin(top: 5),
                                                      hintText: "Code",
                                                      hintStyle: CustomTextStyles
                                                          .bodyLargePrimaryContainer,
                                                      textInputAction:
                                                          TextInputAction.done)
                                                ])))
                                  ])),
                          CustomCheckboxButton(
                              text: "Save My Card Details",
                              value: savemycarddetai,
                              margin: getMargin(top: 18),
                              textStyle: theme.textTheme.bodyLarge,
                              onChange: (value) {
                                savemycarddetai = value;
                              }),
                          Opacity(
                              opacity: 0.4,
                              child: CustomElevatedButton(
                                  text: "SAVE".toUpperCase(),
                                  margin: getMargin(top: 34, bottom: 5),
                                  buttonStyle: CustomButtonStyles.fillGray,
                                  onTap: () {
                                    onTapSave(context);
                                  }))
                        ])))));
  }

  /// Navigates back to the previous screen.
  ///
  /// This function takes a [BuildContext] object as a parameter, which is used
  /// to navigate back to the previous screen.
  onTapLocationone(BuildContext context) {
    Navigator.pop(context);
  }

  /// Navigates to the paymentSuccessScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the paymentSuccessScreen.
  onTapSave(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.paymentSuccessScreen);
  }
}
