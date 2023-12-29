import '../history_screen/widgets/history_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:kiip/core/app_export.dart';
import 'package:kiip/widgets/app_bar/appbar_iconbutton_1.dart';
import 'package:kiip/widgets/app_bar/appbar_title.dart';
import 'package:kiip/widgets/app_bar/custom_app_bar.dart';

class HistoryScreen extends StatelessWidget {
  const HistoryScreen({Key? key}) : super(key: key);

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
                title: AppbarTitle(text: "History")),
            body: Container(
                width: double.maxFinite,
                padding: getPadding(left: 24, top: 25, right: 24, bottom: 25),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Electric Bill",
                                style: CustomTextStyles.headlineLargeGray900),
                            CustomImageView(
                                svgPath: ImageConstant.imgFavoriteGray900,
                                height: getVerticalSize(8),
                                width: getHorizontalSize(9),
                                margin:
                                    getMargin(left: 5, top: 19, bottom: 18)),
                            Spacer(),
                            Padding(
                                padding: getPadding(top: 17, bottom: 6),
                                child: Text("All time",
                                    style: theme.textTheme.bodyMedium)),
                            CustomImageView(
                                svgPath: ImageConstant.imgLocation,
                                height: getVerticalSize(8),
                                width: getHorizontalSize(9),
                                margin: getMargin(left: 3, top: 25, bottom: 12))
                          ]),
                      Expanded(
                          child: Padding(
                              padding: getPadding(left: 3, top: 21, right: 3),
                              child: ListView.separated(
                                  physics: BouncingScrollPhysics(),
                                  shrinkWrap: true,
                                  separatorBuilder: (context, index) {
                                    return Padding(
                                        padding:
                                            getPadding(top: 7.0, bottom: 7.0),
                                        child: SizedBox(
                                            width: getHorizontalSize(360),
                                            child: Divider(
                                                height: getVerticalSize(1),
                                                thickness: getVerticalSize(1),
                                                color:
                                                    appTheme.blueGray10003)));
                                  },
                                  itemCount: 8,
                                  itemBuilder: (context, index) {
                                    return HistoryItemWidget();
                                  })))
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
