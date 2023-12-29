import 'package:flutter/material.dart';
import 'package:kiip/core/app_export.dart';
import 'package:kiip/widgets/custom_elevated_button.dart';
import 'package:kiip/widgets/custom_text_form_field.dart';

class ReceiveMoneyPersonalPage extends StatefulWidget {
  const ReceiveMoneyPersonalPage({Key? key}) : super(key: key);

  @override
  ReceiveMoneyPersonalPageState createState() =>
      ReceiveMoneyPersonalPageState();
}

// ignore_for_file: must_be_immutable
class ReceiveMoneyPersonalPageState extends State<ReceiveMoneyPersonalPage>
    with AutomaticKeepAliveClientMixin<ReceiveMoneyPersonalPage> {
  TextEditingController firstNameController = TextEditingController();

  TextEditingController lastNameController = TextEditingController();

  TextEditingController emailController = TextEditingController();

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
                                Opacity(
                                    opacity: 0.4,
                                    child: CustomElevatedButton(
                                        text: "send".toUpperCase(),
                                        margin: getMargin(top: 40),
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
