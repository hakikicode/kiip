import 'package:flutter/material.dart';
import 'package:kiip/core/app_export.dart';
import 'package:kiip/widgets/app_bar/appbar_iconbutton_1.dart';
import 'package:kiip/widgets/app_bar/appbar_title.dart';
import 'package:kiip/widgets/app_bar/custom_app_bar.dart';
import 'package:kiip/widgets/custom_switch.dart';

// ignore_for_file: must_be_immutable
class NotificationsScreen extends StatelessWidget {
  NotificationsScreen({Key? key}) : super(key: key);

  bool isSelectedSwitch = false;

  bool isSelectedSwitch1 = false;

  bool isSelectedSwitch2 = false;

  bool isSelectedSwitch3 = false;

  bool isSelectedSwitch4 = false;

  bool isSelectedSwitch5 = false;

  bool isSelectedSwitch6 = false;

  bool isSelectedSwitch7 = false;

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            backgroundColor: appTheme.gray100,
            appBar: CustomAppBar(
                leadingWidth: getHorizontalSize(68),
                leading: AppbarIconbutton1(
                    svgPath: ImageConstant.imgLocationOnprimary,
                    margin: getMargin(left: 24, top: 6, bottom: 6),
                    onTap: () {
                      onTapLocationone(context);
                    }),
                centerTitle: true,
                title: AppbarTitle(text: "Notifications")),
            body: Container(
                width: double.maxFinite,
                padding: getPadding(left: 27, top: 34, right: 27, bottom: 34),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                                padding: getPadding(top: 1),
                                child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text("Money Receive",
                                          style: theme.textTheme.titleMedium),
                                      Padding(
                                          padding: getPadding(top: 3),
                                          child: Text(
                                              "If anyone sent you money",
                                              style: CustomTextStyles
                                                  .bodyMedium13))
                                    ])),
                            CustomSwitch(
                                margin: getMargin(bottom: 23),
                                value: isSelectedSwitch,
                                onChange: (value) {
                                  isSelectedSwitch = value;
                                })
                          ]),
                      Padding(
                          padding: getPadding(top: 25),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text("Card Activation",
                                          style: theme.textTheme.titleMedium),
                                      Padding(
                                          padding: getPadding(top: 4),
                                          child: Text("If card active",
                                              style: CustomTextStyles
                                                  .bodyMedium13))
                                    ]),
                                CustomSwitch(
                                    margin: getMargin(bottom: 21),
                                    value: isSelectedSwitch1,
                                    onChange: (value) {
                                      isSelectedSwitch1 = value;
                                    })
                              ])),
                      Padding(
                          padding: getPadding(top: 27),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                    padding: getPadding(top: 1),
                                    child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Text("Update Feature",
                                              style:
                                                  theme.textTheme.titleMedium),
                                          Padding(
                                              padding: getPadding(top: 3),
                                              child: Text(
                                                  "If any new update come",
                                                  style: CustomTextStyles
                                                      .bodyMedium13))
                                        ])),
                                CustomSwitch(
                                    margin: getMargin(bottom: 23),
                                    value: isSelectedSwitch2,
                                    onChange: (value) {
                                      isSelectedSwitch2 = value;
                                    })
                              ])),
                      Padding(
                          padding: getPadding(top: 25),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text("Cash In",
                                          style: theme.textTheme.titleMedium),
                                      Padding(
                                          padding: getPadding(top: 5),
                                          child: Text(
                                              "If any cash in your card",
                                              style: CustomTextStyles
                                                  .bodyMedium13))
                                    ]),
                                CustomSwitch(
                                    margin: getMargin(bottom: 23),
                                    value: isSelectedSwitch3,
                                    onChange: (value) {
                                      isSelectedSwitch3 = value;
                                    })
                              ])),
                      Padding(
                          padding: getPadding(top: 25),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                    padding: getPadding(top: 1),
                                    child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Text("Money Request",
                                              style:
                                                  theme.textTheme.titleMedium),
                                          Padding(
                                              padding: getPadding(top: 3),
                                              child: Text(
                                                  "If anyone sent you money request",
                                                  style: CustomTextStyles
                                                      .bodyMedium13))
                                        ])),
                                CustomSwitch(
                                    margin: getMargin(bottom: 23),
                                    value: isSelectedSwitch4,
                                    onChange: (value) {
                                      isSelectedSwitch4 = value;
                                    })
                              ])),
                      Padding(
                          padding: getPadding(top: 25),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                    padding: getPadding(top: 1),
                                    child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Text("Money Trasfer",
                                              style:
                                                  theme.textTheme.titleMedium),
                                          Padding(
                                              padding: getPadding(top: 3),
                                              child: Text(
                                                  "If you sent money to somone",
                                                  style: CustomTextStyles
                                                      .bodyMedium13))
                                        ])),
                                CustomSwitch(
                                    margin: getMargin(bottom: 23),
                                    value: isSelectedSwitch5,
                                    onChange: (value) {
                                      isSelectedSwitch5 = value;
                                    })
                              ])),
                      Padding(
                          padding: getPadding(top: 25),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text("Number Notification",
                                          style: theme.textTheme.titleMedium),
                                      Padding(
                                          padding: getPadding(top: 5),
                                          child: Text(
                                              "Send notification to your number",
                                              style: CustomTextStyles
                                                  .bodyMedium13))
                                    ]),
                                CustomSwitch(
                                    margin: getMargin(bottom: 23),
                                    value: isSelectedSwitch6,
                                    onChange: (value) {
                                      isSelectedSwitch6 = value;
                                    })
                              ])),
                      Padding(
                          padding: getPadding(top: 25, bottom: 5),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text("Email Notification",
                                          style: theme.textTheme.titleMedium),
                                      Padding(
                                          padding: getPadding(top: 5),
                                          child: Text(
                                              "Send notification to your email",
                                              style: CustomTextStyles
                                                  .bodyMedium13))
                                    ]),
                                CustomSwitch(
                                    margin: getMargin(bottom: 23),
                                    value: isSelectedSwitch7,
                                    onChange: (value) {
                                      isSelectedSwitch7 = value;
                                    })
                              ]))
                    ]))));
  }

  /// Navigates back to the previous screen.
  ///
  /// This function takes a [BuildContext] object as a parameter, which is used
  /// to navigate back to the previous screen.
  onTapLocationone(BuildContext context) {
    Navigator.pop(context);
  }
}
