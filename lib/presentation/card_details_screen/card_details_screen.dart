import '../card_details_screen/widgets/card_details_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:kiip/core/app_export.dart';
import 'package:kiip/widgets/app_bar/appbar_image.dart';
import 'package:kiip/widgets/app_bar/appbar_title.dart';
import 'package:kiip/widgets/app_bar/custom_app_bar.dart';
import 'package:kiip/widgets/custom_icon_button.dart';

class CardDetailsScreen extends StatelessWidget {
  const CardDetailsScreen({Key? key})
      : super(
          key: key,
        );

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
            margin: getMargin(
              left: 24,
              top: 6,
              bottom: 6,
            ),
          ),
          centerTitle: true,
          title: AppbarTitle(
            text: "Card Details",
          ),
        ),
        body: Container(
          width: double.maxFinite,
          padding: getPadding(
            left: 12,
            top: 34,
            right: 12,
            bottom: 34,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                height: getVerticalSize(180),
                width: getHorizontalSize(390),
                child: Stack(
                  alignment: Alignment.centerRight,
                  children: [
                    Align(
                      alignment: Alignment.center,
                      child: Container(
                        margin: getMargin(
                          left: 15,
                          right: 9,
                        ),
                        padding: getPadding(
                          left: 24,
                          top: 22,
                          right: 24,
                          bottom: 22,
                        ),
                        decoration: AppDecoration.gradientPrimaryToGray,
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: getPadding(
                                left: 2,
                              ),
                              child: Text(
                                "Jonathan Anderson",
                                style: CustomTextStyles.labelLargeOnPrimary,
                              ),
                            ),
                            Padding(
                              padding: getPadding(
                                left: 2,
                                top: 39,
                              ),
                              child: Text(
                                "1222 3443 9881 1222",
                                style: CustomTextStyles
                                    .titleMediumOnPrimarySemiBold,
                              ),
                            ),
                            Padding(
                              padding: getPadding(
                                top: 24,
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Balance",
                                        style: theme.textTheme.labelSmall,
                                      ),
                                      Padding(
                                        padding: getPadding(
                                          top: 3,
                                        ),
                                        child: Text(
                                          " 31,250",
                                          style: CustomTextStyles
                                              .labelLargeOnPrimarySemiBold,
                                        ),
                                      ),
                                    ],
                                  ),
                                  CustomImageView(
                                    svgPath: ImageConstant.imgVolume,
                                    height: getSize(20),
                                    width: getSize(20),
                                    margin: getMargin(
                                      top: 10,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    CustomIconButton(
                      height: getSize(30),
                      width: getSize(30),
                      padding: getPadding(
                        all: 10,
                      ),
                      decoration: IconButtonStyleHelper.outlineBlackF,
                      alignment: Alignment.centerRight,
                      child: CustomImageView(
                        svgPath: ImageConstant.imgEye,
                      ),
                    ),
                    CustomIconButton(
                      height: getSize(30),
                      width: getSize(30),
                      padding: getPadding(
                        all: 10,
                      ),
                      decoration: IconButtonStyleHelper.outlineBlackF,
                      alignment: Alignment.centerLeft,
                      child: CustomImageView(
                        svgPath: ImageConstant.imgEyePrimary,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: getPadding(
                  left: 12,
                  top: 73,
                  right: 12,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Today",
                      style: theme.textTheme.headlineMedium,
                    ),
                    Spacer(),
                    Padding(
                      padding: getPadding(
                        top: 11,
                        bottom: 9,
                      ),
                      child: Text(
                        "25 Jan",
                        style: CustomTextStyles.labelLargeBluegray700,
                      ),
                    ),
                    CustomImageView(
                      svgPath: ImageConstant.imgLocation,
                      height: getVerticalSize(6),
                      width: getHorizontalSize(7),
                      margin: getMargin(
                        left: 5,
                        top: 18,
                        bottom: 15,
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Padding(
                  padding: getPadding(
                    left: 12,
                    top: 13,
                    right: 12,
                  ),
                  child: ListView.separated(
                    physics: BouncingScrollPhysics(),
                    shrinkWrap: true,
                    separatorBuilder: (
                      context,
                      index,
                    ) {
                      return SizedBox(
                        height: getVerticalSize(20),
                      );
                    },
                    itemCount: 5,
                    itemBuilder: (context, index) {
                      return CardDetailsItemWidget();
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
