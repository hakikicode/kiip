import '../home_page/widgets/options_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:kiip/core/app_export.dart';
import 'package:kiip/widgets/app_bar/appbar_image.dart';
import 'package:kiip/widgets/app_bar/appbar_title.dart';
import 'package:kiip/widgets/app_bar/custom_app_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            backgroundColor: appTheme.gray100,
            appBar: CustomAppBar(
                leadingWidth: getHorizontalSize(68),
                leading: AppbarImage(
                    svgPath: ImageConstant.imgGrid,
                    margin: getMargin(left: 24, top: 6, bottom: 6)),
                title: AppbarTitle(
                    text: "Welcome Back!", margin: getMargin(left: 23))),
            body: Container(
                width: double.maxFinite,
                padding: getPadding(left: 24, top: 34, right: 24, bottom: 34),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                          width: getHorizontalSize(360),
                          margin: getMargin(right: 6),
                          padding: getPadding(
                              left: 90, top: 17, right: 90, bottom: 17),
                          decoration: AppDecoration.fillPrimary,
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("Total Balance",
                                    style: CustomTextStyles.bodyLargeGray10001),
                                Text("3,567.12",
                                    style:
                                        CustomTextStyles.displayMediumGray10001)
                              ])),
                      Expanded(
                          child: Padding(
                              padding: getPadding(left: 3, top: 50, right: 3),
                              child: GridView.builder(
                                  shrinkWrap: true,
                                  gridDelegate:
                                      SliverGridDelegateWithFixedCrossAxisCount(
                                          mainAxisExtent: getVerticalSize(201),
                                          crossAxisCount: 2,
                                          mainAxisSpacing:
                                              getHorizontalSize(24),
                                          crossAxisSpacing:
                                              getHorizontalSize(24)),
                                  physics: BouncingScrollPhysics(),
                                  itemCount: 6,
                                  itemBuilder: (context, index) {
                                    return OptionsItemWidget(onTapOne: () {
                                      onTapOne(context);
                                    });
                                  })))
                    ]))));
  }

  /// Navigates to the mobilePrepaidOneScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the mobilePrepaidOneScreen.
  onTapOne(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.mobilePrepaidOneScreen);
  }
}
