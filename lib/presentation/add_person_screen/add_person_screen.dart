import 'package:flutter/material.dart';
import 'package:kiip/core/app_export.dart';
import 'package:kiip/widgets/app_bar/appbar_iconbutton_1.dart';
import 'package:kiip/widgets/app_bar/appbar_title.dart';
import 'package:kiip/widgets/app_bar/custom_app_bar.dart';
import 'package:kiip/widgets/custom_checkbox_button.dart';
import 'package:kiip/widgets/custom_elevated_button.dart';
import 'package:kiip/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class AddPersonScreen extends StatelessWidget {
  AddPersonScreen({Key? key}) : super(key: key);

  TextEditingController nameController = TextEditingController();

  TextEditingController cardNumberController = TextEditingController();

  bool saveonlist = false;

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
                title: AppbarTitle(text: "New Contact")),
            body: Form(
                key: _formKey,
                child: Container(
                    width: double.maxFinite,
                    padding:
                        getPadding(left: 27, top: 34, right: 27, bottom: 34),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          CustomImageView(
                              svgPath: ImageConstant.imgUserGray50,
                              height: getSize(100),
                              width: getSize(100),
                              alignment: Alignment.center),
                          Padding(
                              padding: getPadding(top: 26),
                              child: Text("Name",
                                  style: theme.textTheme.bodyLarge)),
                          CustomTextFormField(
                              controller: nameController,
                              margin: getMargin(top: 5),
                              hintText: "User name",
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
                              textInputAction: TextInputAction.done,
                              textInputType: TextInputType.number),
                          CustomCheckboxButton(
                              text: "Save On List",
                              value: saveonlist,
                              margin: getMargin(top: 16),
                              onChange: (value) {
                                saveonlist = value;
                              }),
                          Opacity(
                              opacity: 0.4,
                              child: CustomElevatedButton(
                                  text: "SAVE".toUpperCase(),
                                  margin: getMargin(top: 36, bottom: 5),
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

  /// Navigates to the addCardOneScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the addCardOneScreen.
  onTapSave(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.addCardOneScreen);
  }
}
