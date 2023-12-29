import 'package:flutter/material.dart';
import 'package:kiip/core/app_export.dart';
import 'package:kiip/widgets/custom_elevated_button.dart';
import 'package:kiip/widgets/custom_text_form_field.dart';

class ReceiveMoneyRequestPage extends StatefulWidget {
  const ReceiveMoneyRequestPage({Key? key}) : super(key: key);

  @override
  ReceiveMoneyRequestPageState createState() => ReceiveMoneyRequestPageState();
}

// ignore_for_file: must_be_immutable
class ReceiveMoneyRequestPageState extends State<ReceiveMoneyRequestPage>
    with AutomaticKeepAliveClientMixin<ReceiveMoneyRequestPage> {
  TextEditingController firstNameController = TextEditingController();

  TextEditingController lastNameController = TextEditingController();

  TextEditingController emailController = TextEditingController();

  TextEditingController nameController = TextEditingController();

  TextEditingController countryController = TextEditingController();

  TextEditingController priceController = TextEditingController();

  TextEditingController priceController1 = TextEditingController();

  TextEditingController writeashortController = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            backgroundColor: appTheme.gray100,
            resizeToAvoidBottomInset: false,
            body: Form(
                key: _formKey,
                child: SingleChildScrollView(
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                      Padding(
                          padding: getPadding(left: 27, top: 25, right: 27),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Expanded(
                                          child: Padding(
                                              padding: getPadding(right: 12),
                                              child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  children: [
                                                    Text("First Name",
                                                        style: theme.textTheme
                                                            .bodyLarge),
                                                    CustomTextFormField(
                                                        width:
                                                            getHorizontalSize(
                                                                168),
                                                        controller:
                                                            firstNameController,
                                                        margin:
                                                            getMargin(top: 5),
                                                        hintText: "Name",
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
                                                    Text("Last Name",
                                                        style: theme.textTheme
                                                            .bodyLarge),
                                                    CustomTextFormField(
                                                        width:
                                                            getHorizontalSize(
                                                                168),
                                                        controller:
                                                            lastNameController,
                                                        margin:
                                                            getMargin(top: 5),
                                                        hintText: "Name",
                                                        hintStyle: CustomTextStyles
                                                            .bodyLargePrimaryContainer)
                                                  ])))
                                    ]),
                                Padding(
                                    padding: getPadding(top: 26),
                                    child: Text("Email",
                                        style: theme.textTheme.bodyLarge)),
                                CustomTextFormField(
                                    controller: emailController,
                                    margin: getMargin(top: 5),
                                    hintText: "Your Email Here",
                                    hintStyle: CustomTextStyles
                                        .bodyLargePrimaryContainer,
                                    textInputType: TextInputType.emailAddress),
                                Padding(
                                    padding: getPadding(top: 27),
                                    child: Text("Company Name",
                                        style: theme.textTheme.bodyLarge)),
                                CustomTextFormField(
                                    controller: nameController,
                                    margin: getMargin(top: 7),
                                    hintText: "Company name here",
                                    hintStyle: CustomTextStyles
                                        .bodyLargePrimaryContainer),
                                Padding(
                                    padding: getPadding(top: 27),
                                    child: Text("Country",
                                        style: theme.textTheme.bodyLarge)),
                                CustomTextFormField(
                                    controller: countryController,
                                    margin: getMargin(top: 3),
                                    hintText: "Select Country",
                                    hintStyle: CustomTextStyles
                                        .bodyLargePrimaryContainer),
                                Padding(
                                    padding: getPadding(top: 25),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Expanded(
                                              child: Padding(
                                                  padding:
                                                      getPadding(right: 12),
                                                  child: Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      children: [
                                                        Text("Ammount",
                                                            style: theme
                                                                .textTheme
                                                                .bodyLarge),
                                                        CustomTextFormField(
                                                            width:
                                                                getHorizontalSize(
                                                                    168),
                                                            controller:
                                                                priceController,
                                                            margin: getMargin(
                                                                top: 5),
                                                            hintText: "0.00",
                                                            hintStyle:
                                                                CustomTextStyles
                                                                    .bodyLargePrimaryContainer)
                                                      ]))),
                                          Expanded(
                                              child: Padding(
                                                  padding: getPadding(left: 12),
                                                  child: Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      children: [
                                                        Text("Currency",
                                                            style: theme
                                                                .textTheme
                                                                .bodyLarge),
                                                        CustomTextFormField(
                                                            width:
                                                                getHorizontalSize(
                                                                    168),
                                                            controller:
                                                                priceController1,
                                                            margin: getMargin(
                                                                top: 3),
                                                            hintText: "USD",
                                                            hintStyle:
                                                                CustomTextStyles
                                                                    .bodyLargePrimaryContainer)
                                                      ])))
                                        ])),
                                Padding(
                                    padding: getPadding(top: 27),
                                    child: Text("Massage",
                                        style: theme.textTheme.bodyLarge)),
                                CustomTextFormField(
                                    controller: writeashortController,
                                    margin: getMargin(top: 3),
                                    hintText: "Write a short note",
                                    hintStyle: CustomTextStyles
                                        .bodyLargePrimaryContainer,
                                    textInputAction: TextInputAction.done),
                                Container(
                                    margin: getMargin(top: 30),
                                    padding: getPadding(
                                        left: 83,
                                        top: 37,
                                        right: 83,
                                        bottom: 37),
                                    decoration:
                                        AppDecoration.outlinePrimaryContainer,
                                    child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text("Attach File(Optional)",
                                              style: CustomTextStyles
                                                  .titleLargePrimaryContainer),
                                          CustomImageView(
                                              svgPath: ImageConstant
                                                  .imgFilePrimarycontainer,
                                              height: getVerticalSize(26),
                                              width: getHorizontalSize(20),
                                              margin:
                                                  getMargin(top: 7, bottom: 2))
                                        ])),
                                Opacity(
                                    opacity: 0.4,
                                    child: CustomElevatedButton(
                                        text: "send".toUpperCase(),
                                        margin: getMargin(top: 42),
                                        buttonStyle:
                                            CustomButtonStyles.fillGray,
                                        onTap: () {
                                          onTapSend(context);
                                        }))
                              ]))
                    ])))));
  }

  /// Navigates to the requestSentScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the requestSentScreen.
  onTapSend(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.requestSentScreen);
  }
}
