import 'package:flutter/material.dart';
import 'package:kiip/core/app_export.dart';
import 'package:kiip/widgets/app_bar/appbar_iconbutton_1.dart';
import 'package:kiip/widgets/app_bar/appbar_title.dart';
import 'package:kiip/widgets/app_bar/custom_app_bar.dart';
import 'package:kiip/widgets/custom_elevated_button.dart';
import 'package:kiip/widgets/custom_icon_button.dart';
import 'package:kiip/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class EditProfileScreen extends StatelessWidget {
  EditProfileScreen({Key? key}) : super(key: key);

  TextEditingController nameController = TextEditingController();

  TextEditingController emailController = TextEditingController();

  TextEditingController phoneController = TextEditingController();

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
                title: AppbarTitle(text: "Edit Profile")),
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
                          Align(
                              alignment: Alignment.center,
                              child: SizedBox(
                                  height: getSize(139),
                                  width: getSize(139),
                                  child: Stack(
                                      alignment: Alignment.bottomRight,
                                      children: [
                                        CustomImageView(
                                            imagePath:
                                                ImageConstant.imgEllipse107,
                                            height: getSize(139),
                                            width: getSize(139),
                                            radius: BorderRadius.circular(
                                                getHorizontalSize(69)),
                                            alignment: Alignment.center),
                                        CustomIconButton(
                                            height: getSize(30),
                                            width: getSize(30),
                                            margin: getMargin(right: 7),
                                            padding: getPadding(all: 9),
                                            decoration: IconButtonStyleHelper
                                                .outlineGray,
                                            alignment: Alignment.bottomRight,
                                            child: CustomImageView(
                                                svgPath:
                                                    ImageConstant.imgTrash))
                                      ]))),
                          Align(
                              alignment: Alignment.center,
                              child: Padding(
                                  padding: getPadding(top: 12),
                                  child: Text("Suzane Jobs",
                                      style: theme.textTheme.displayMedium))),
                          Align(
                              alignment: Alignment.center,
                              child: Padding(
                                  padding: getPadding(top: 15),
                                  child: Text("Edit Profile",
                                      style: theme.textTheme.bodyMedium))),
                          Padding(
                              padding: getPadding(top: 11),
                              child: Text("Name",
                                  style: theme.textTheme.bodyLarge)),
                          CustomTextFormField(
                              controller: nameController,
                              margin: getMargin(top: 5),
                              hintText: "Suzane Jobs",
                              hintStyle: CustomTextStyles.titleMediumSemiBold),
                          Padding(
                              padding: getPadding(top: 25),
                              child: Text("Email",
                                  style: theme.textTheme.bodyLarge)),
                          CustomTextFormField(
                              controller: emailController,
                              margin: getMargin(top: 5),
                              hintText: "user@gmail.com",
                              hintStyle: CustomTextStyles.titleMediumSemiBold,
                              textInputType: TextInputType.emailAddress),
                          Padding(
                              padding: getPadding(top: 25),
                              child: Text("Phone",
                                  style: theme.textTheme.bodyLarge)),
                          CustomTextFormField(
                              controller: phoneController,
                              margin: getMargin(top: 5),
                              hintText: "+1234567890",
                              hintStyle: CustomTextStyles.titleMediumSemiBold,
                              textInputAction: TextInputAction.done),
                          CustomElevatedButton(
                              text: "SAVE".toUpperCase(),
                              margin: getMargin(top: 50, bottom: 5),
                              onTap: () {
                                onTapSave(context);
                              })
                        ])))));
  }

  /// Navigates back to the previous screen.
  ///
  /// This function takes a [BuildContext] object as a parameter, which is used
  /// to navigate back to the previous screen.
  onTapLocationone(BuildContext context) {
    Navigator.pop(context);
  }

  /// Navigates to the homeContainerScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the homeContainerScreen.
  onTapSave(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.homeContainerScreen);
  }
}
