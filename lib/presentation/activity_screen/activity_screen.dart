import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:kiip/core/app_export.dart';
import 'package:kiip/presentation/activity_screen/activity_screen.dart';
import 'package:kiip/presentation/cards_screen/cards_screen.dart';
import 'package:kiip/presentation/home_page/home_page.dart';
import 'package:kiip/presentation/profile_screen/profile_screen.dart';
import 'package:kiip/widgets/app_bar/appbar_image.dart';
import 'package:kiip/widgets/app_bar/appbar_title.dart';
import 'package:kiip/widgets/app_bar/custom_app_bar.dart';
import 'package:kiip/widgets/custom_bottom_bar.dart';
import 'package:kiip/widgets/custom_elevated_button.dart';
import 'package:kiip/widgets/custom_icon_button.dart';

class ActivityScreen extends StatelessWidget {
  ActivityScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

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
            text: "Activity",
          ),
        ),
        body: SizedBox(
          width: mediaQueryData.size.width,
          child: SingleChildScrollView(
            padding: getPadding(
              top: 34,
            ),
            child: Padding(
              padding: getPadding(
                left: 27,
                right: 27,
                bottom: 5,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    decoration: AppDecoration.white,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Padding(
                          padding: getPadding(
                            left: 40,
                            top: 24,
                          ),
                          child: Row(
                            children: [
                              Padding(
                                padding: getPadding(
                                  bottom: 2,
                                ),
                                child: Text(
                                  "Income",
                                  style: CustomTextStyles.titleLarge22,
                                ),
                              ),
                              Padding(
                                padding: getPadding(
                                  left: 35,
                                  top: 2,
                                ),
                                child: Text(
                                  "Expenses",
                                  style: CustomTextStyles
                                      .titleLargeBluegray700SemiBold,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: Padding(
                            padding: getPadding(
                              left: 40,
                              top: 23,
                              right: 33,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                CustomIconButton(
                                  height: getSize(40),
                                  width: getSize(40),
                                  padding: getPadding(
                                    all: 10,
                                  ),
                                  child: CustomImageView(
                                    svgPath: ImageConstant.imgCalendar,
                                  ),
                                ),
                                Padding(
                                  padding: getPadding(
                                    left: 10,
                                    top: 6,
                                    bottom: 6,
                                  ),
                                  child: Text(
                                    "16 – 23 Jan",
                                    style: CustomTextStyles.bodyLargeGray90017,
                                  ),
                                ),
                                Spacer(),
                                CustomImageView(
                                  svgPath: ImageConstant.imgStockholmicons,
                                  height: getSize(24),
                                  width: getSize(24),
                                  margin: getMargin(
                                    top: 8,
                                    bottom: 8,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          height: getVerticalSize(208),
                          width: getHorizontalSize(335),
                          margin: getMargin(
                            top: 28,
                          ),
                          child: Stack(
                            alignment: Alignment.topCenter,
                            children: [
                              CustomImageView(
                                svgPath: ImageConstant.imgLine,
                                height: getVerticalSize(208),
                                width: getHorizontalSize(264),
                                alignment: Alignment.centerRight,
                                margin: getMargin(
                                  right: 17,
                                ),
                              ),
                              Align(
                                alignment: Alignment.topCenter,
                                child: Container(
                                  margin: getMargin(
                                    top: 14,
                                  ),
                                  padding: getPadding(
                                    left: 104,
                                    top: 23,
                                    right: 104,
                                    bottom: 23,
                                  ),
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: fs.Svg(
                                        ImageConstant.imgGroup4,
                                      ),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  child: CustomElevatedButton(
                                    height: getVerticalSize(40),
                                    width: getHorizontalSize(91),
                                    text: "2,366",
                                    margin: getMargin(
                                      top: 32,
                                    ),
                                    leftIcon: Container(
                                      padding: getPadding(
                                        all: 3,
                                      ),
                                      margin: getMargin(
                                        right: 4,
                                      ),
                                      decoration: BoxDecoration(
                                        color: theme.colorScheme.onPrimary,
                                        borderRadius: BorderRadius.circular(
                                          getHorizontalSize(6),
                                        ),
                                      ),
                                      child: CustomImageView(
                                        svgPath:
                                            ImageConstant.imgArrowdownPrimary,
                                      ),
                                    ),
                                    buttonStyle:
                                        CustomButtonStyles.outlineBlueGray,
                                    buttonTextStyle:
                                        CustomTextStyles.bodyMediumOnPrimary,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: getMargin(
                      top: 38,
                    ),
                    padding: getPadding(
                      left: 40,
                      top: 23,
                      right: 40,
                      bottom: 23,
                    ),
                    decoration: AppDecoration.white,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Transaction",
                              style: CustomTextStyles.headlineMediumExtraBold_1,
                            ),
                            Spacer(),
                            Padding(
                              padding: getPadding(
                                top: 10,
                                bottom: 10,
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
                        Padding(
                          padding: getPadding(
                            top: 20,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              CustomIconButton(
                                height: getSize(40),
                                width: getSize(40),
                                margin: getMargin(
                                  top: 3,
                                  bottom: 6,
                                ),
                                padding: getPadding(
                                  all: 10,
                                ),
                                child: CustomImageView(
                                  svgPath: ImageConstant.imgBrightness,
                                ),
                              ),
                              Padding(
                                padding: getPadding(
                                  left: 10,
                                  top: 9,
                                  bottom: 12,
                                ),
                                child: Text(
                                  "Limit",
                                  style: CustomTextStyles.titleMediumSemiBold17,
                                ),
                              ),
                              Spacer(),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    "105.00",
                                    style: CustomTextStyles.titleLarge_1,
                                  ),
                                  Text(
                                    "per day",
                                    style: CustomTextStyles.bodyLarge_1,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        CustomImageView(
                          svgPath: ImageConstant.imgBars,
                          height: getVerticalSize(122),
                          width: getHorizontalSize(262),
                          margin: getMargin(
                            top: 26,
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            left: 11,
                            top: 14,
                            right: 3,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "17",
                                style: theme.textTheme.labelLarge,
                              ),
                              Text(
                                "18",
                                style: theme.textTheme.labelLarge,
                              ),
                              Text(
                                "19",
                                style: theme.textTheme.labelLarge,
                              ),
                              Text(
                                "20",
                                style: theme.textTheme.labelLarge,
                              ),
                              Text(
                                "21",
                                style: theme.textTheme.labelLarge,
                              ),
                              Text(
                                "22",
                                style: theme.textTheme.labelLarge,
                              ),
                              Text(
                                "23",
                                style: theme.textTheme.labelLarge,
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            left: 6,
                            bottom: 3,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Mon".toUpperCase(),
                                style: CustomTextStyles.bodySmallBluegray700,
                              ),
                              Padding(
                                padding: getPadding(
                                  left: 21,
                                ),
                                child: Text(
                                  "Tue".toUpperCase(),
                                  style: CustomTextStyles.bodySmallBluegray700,
                                ),
                              ),
                              Padding(
                                padding: getPadding(
                                  left: 20,
                                ),
                                child: Text(
                                  "Wed".toUpperCase(),
                                  style: CustomTextStyles.bodySmallBluegray700,
                                ),
                              ),
                              Padding(
                                padding: getPadding(
                                  left: 22,
                                ),
                                child: Text(
                                  "Thu".toUpperCase(),
                                  style: CustomTextStyles.bodySmallBluegray700,
                                ),
                              ),
                              Padding(
                                padding: getPadding(
                                  left: 24,
                                ),
                                child: Text(
                                  "Fri".toUpperCase(),
                                  style: CustomTextStyles.bodySmallBluegray700,
                                ),
                              ),
                              Padding(
                                padding: getPadding(
                                  left: 27,
                                ),
                                child: Text(
                                  "Sat".toUpperCase(),
                                  style: CustomTextStyles.bodySmallBluegray700,
                                ),
                              ),
                              Padding(
                                padding: getPadding(
                                  left: 22,
                                ),
                                child: Text(
                                  "Sun".toUpperCase(),
                                  style: CustomTextStyles.bodySmallBluegray700,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        bottomNavigationBar: CustomBottomBar(
          onChanged: (BottomBarEnum type) {
            Navigator.pushNamed(
                navigatorKey.currentContext!, getCurrentRoute(type));
          },
        ),
      ),
    );
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Home:
        return AppRoutes.homePage;
      case BottomBarEnum.Card:
        return AppRoutes.cardsScreen;
      case BottomBarEnum.Activity:
        return AppRoutes.activityScreen;
      case BottomBarEnum.Profile:
        return AppRoutes.profileScreen;
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.homePage:
        return HomePage();
      case AppRoutes.cardsScreen:
        return CardsScreen();
      case AppRoutes.activityScreen:
        return ActivityScreen();
      case AppRoutes.profileScreen:
        return ProfileScreen();
      default:
        return DefaultWidget();
    }
  }
}
