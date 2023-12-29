import 'package:flutter/material.dart';
import 'package:kiip/core/app_export.dart';
import 'package:kiip/widgets/app_bar/appbar_iconbutton_1.dart';
import 'package:kiip/widgets/app_bar/appbar_title.dart';
import 'package:kiip/widgets/app_bar/custom_app_bar.dart';
import 'package:kiip/widgets/custom_elevated_button.dart';
import 'package:kiip/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class ElectricBillScreen extends StatelessWidget {
  ElectricBillScreen({Key? key}) : super(key: key);

  TextEditingController nameController = TextEditingController();

  TextEditingController addressController = TextEditingController();

  TextEditingController phoneController = TextEditingController();

  TextEditingController group18250Controller = TextEditingController();

  TextEditingController dateController = TextEditingController();

  TextEditingController dateController1 = TextEditingController();

  TextEditingController otpController = TextEditingController();

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
                title: AppbarTitle(text: "Electricity Bill")),
            body: Form(
                key: _formKey,
                child: SingleChildScrollView(
                    padding: getPadding(top: 30),
                    child: Padding(
                        padding: getPadding(left: 26, bottom: 5),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Padding(
                                  padding: getPadding(left: 1),
                                  child: Text("Name",
                                      style: theme.textTheme.bodyLarge)),
                              CustomTextFormField(
                                  controller: nameController,
                                  margin: getMargin(left: 1, top: 5, right: 27),
                                  hintText: "Name Here",
                                  hintStyle: CustomTextStyles
                                      .bodyLargePrimaryContainer,
                                  borderDecoration: TextFormFieldStyleHelper
                                      .outlinePrimaryContainer),
                              Padding(
                                  padding: getPadding(left: 1, top: 25),
                                  child: Text("Address",
                                      style: theme.textTheme.bodyLarge)),
                              CustomTextFormField(
                                  controller: addressController,
                                  margin: getMargin(left: 1, top: 5, right: 27),
                                  hintText: "Address Here",
                                  hintStyle: CustomTextStyles
                                      .bodyLargePrimaryContainer,
                                  borderDecoration: TextFormFieldStyleHelper
                                      .outlinePrimaryContainer),
                              Padding(
                                  padding: getPadding(left: 1, top: 25),
                                  child: Text("Phone",
                                      style: theme.textTheme.bodyLarge)),
                              CustomTextFormField(
                                  controller: phoneController,
                                  margin: getMargin(left: 1, top: 5, right: 27),
                                  hintText: "Phone Here",
                                  hintStyle: CustomTextStyles
                                      .bodyLargePrimaryContainer,
                                  textInputType: TextInputType.phone,
                                  borderDecoration: TextFormFieldStyleHelper
                                      .outlinePrimaryContainer),
                              Padding(
                                  padding: getPadding(left: 1, top: 25),
                                  child: Text("Code",
                                      style: theme.textTheme.bodyLarge)),
                              CustomTextFormField(
                                  controller: group18250Controller,
                                  margin: getMargin(left: 1, top: 5, right: 27),
                                  hintText: "Enter Your Billing Code",
                                  hintStyle: CustomTextStyles
                                      .bodyLargePrimaryContainer,
                                  contentPadding: getPadding(
                                      left: 12, top: 19, right: 12, bottom: 19),
                                  borderDecoration: TextFormFieldStyleHelper
                                      .outlinePrimaryContainer),
                              Padding(
                                  padding:
                                      getPadding(left: 1, top: 26, right: 27),
                                  child: Row(children: [
                                    Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Text("From",
                                              style: theme.textTheme.bodyLarge),
                                          CustomTextFormField(
                                              width: getHorizontalSize(168),
                                              controller: dateController,
                                              margin: getMargin(top: 5),
                                              hintText: "Date",
                                              hintStyle: CustomTextStyles
                                                  .bodyLargePrimaryContainer,
                                              borderDecoration:
                                                  TextFormFieldStyleHelper
                                                      .outlinePrimaryContainer)
                                        ]),
                                    Padding(
                                        padding: getPadding(left: 24),
                                        child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Text("To",
                                                  style: theme
                                                      .textTheme.bodyLarge),
                                              CustomTextFormField(
                                                  width: getHorizontalSize(168),
                                                  controller: dateController1,
                                                  margin: getMargin(top: 5),
                                                  hintText: "Date",
                                                  hintStyle: CustomTextStyles
                                                      .bodyLargePrimaryContainer,
                                                  borderDecoration:
                                                      TextFormFieldStyleHelper
                                                          .outlinePrimaryContainer)
                                            ]))
                                  ])),
                              Padding(
                                  padding: getPadding(top: 30),
                                  child: Divider(
                                      color: theme.colorScheme.onPrimary,
                                      indent: getHorizontalSize(1),
                                      endIndent: getHorizontalSize(27))),
                              Padding(
                                  padding:
                                      getPadding(left: 1, top: 21, right: 27),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Padding(
                                            padding:
                                                getPadding(top: 11, bottom: 9),
                                            child: Text("Electric Fee",
                                                style:
                                                    theme.textTheme.bodyLarge)),
                                        Text("0",
                                            style: CustomTextStyles
                                                .headlineLargeGray900Bold)
                                      ])),
                              Padding(
                                  padding: getPadding(top: 7),
                                  child: Divider(
                                      color: theme.colorScheme.onPrimary,
                                      endIndent: getHorizontalSize(27))),
                              Padding(
                                  padding:
                                      getPadding(left: 1, top: 6, right: 27),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                            padding:
                                                getPadding(top: 4, bottom: 16),
                                            child: Text("Tax",
                                                style:
                                                    theme.textTheme.bodyLarge)),
                                        Text("0",
                                            style: CustomTextStyles
                                                .headlineLargeGray900Bold)
                                      ])),
                              Padding(
                                  padding: getPadding(top: 7),
                                  child: Divider(
                                      color: theme.colorScheme.onPrimary,
                                      endIndent: getHorizontalSize(27))),
                              Padding(
                                  padding:
                                      getPadding(left: 1, top: 6, right: 27),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Padding(
                                            padding:
                                                getPadding(top: 11, bottom: 9),
                                            child: Text("Total",
                                                style:
                                                    theme.textTheme.bodyLarge)),
                                        Text("0",
                                            style: CustomTextStyles
                                                .headlineLargeGray900Bold)
                                      ])),
                              Padding(
                                  padding: getPadding(top: 7),
                                  child: Divider(
                                      color: theme.colorScheme.onPrimary,
                                      endIndent: getHorizontalSize(27))),
                              CustomTextFormField(
                                  controller: otpController,
                                  margin:
                                      getMargin(left: 1, top: 10, right: 27),
                                  hintText: "OTP",
                                  hintStyle:
                                      CustomTextStyles.titleMediumTeal300,
                                  textInputAction: TextInputAction.done,
                                  contentPadding: getPadding(left: 1, right: 1),
                                  borderDecoration: TextFormFieldStyleHelper
                                      .underLineOnPrimary),
                              Padding(
                                  padding:
                                      getPadding(left: 1, top: 61, right: 27),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text("Select Card",
                                            style:
                                                theme.textTheme.headlineMedium),
                                        Padding(
                                            padding: getPadding(top: 11),
                                            child: Text("Add Card",
                                                style: CustomTextStyles
                                                    .titleMediumPrimary))
                                      ])),
                              SingleChildScrollView(
                                  scrollDirection: Axis.horizontal,
                                  padding: getPadding(left: 1, top: 20),
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
                                                        CrossAxisAlignment
                                                            .start,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    children: [
                                                      Padding(
                                                          padding: getPadding(
                                                              left: 2),
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
                                                          padding: getPadding(
                                                              top: 21),
                                                          child: Row(children: [
                                                            Column(
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .start,
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .start,
                                                                children: [
                                                                  Text(
                                                                      "Balance",
                                                                      style: CustomTextStyles
                                                                          .overpassOnPrimary),
                                                                  Padding(
                                                                      padding: getPadding(
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
                                                                height:
                                                                    getSize(16),
                                                                width:
                                                                    getSize(16),
                                                                margin:
                                                                    getMargin(
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
                                                        CrossAxisAlignment
                                                            .start,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    children: [
                                                      Padding(
                                                          padding: getPadding(
                                                              left: 2),
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
                                                          padding: getPadding(
                                                              top: 21),
                                                          child: Row(children: [
                                                            Column(
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .start,
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .start,
                                                                children: [
                                                                  Text(
                                                                      "Balance",
                                                                      style: CustomTextStyles
                                                                          .overpassOnPrimary),
                                                                  Padding(
                                                                      padding: getPadding(
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
                                                                height:
                                                                    getSize(16),
                                                                width:
                                                                    getSize(16),
                                                                margin:
                                                                    getMargin(
                                                                        top: 8))
                                                          ]))
                                                    ])))
                                      ])))
                            ])))),
            bottomNavigationBar: CustomElevatedButton(
                text: "SEND OTP".toUpperCase(),
                margin: getMargin(left: 27, right: 28, bottom: 50),
                onTap: () {
                  onTapSendotp(context);
                })));
  }

  /// Navigates back to the previous screen.
  ///
  /// This function takes a [BuildContext] object as a parameter, which is used
  /// to navigate back to the previous screen.
  onTapLocationone(BuildContext context) {
    Navigator.pop(context);
  }

  /// Navigates to the bilPaymentSuccessScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the bilPaymentSuccessScreen.
  onTapSendotp(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.bilPaymentSuccessScreen);
  }
}
