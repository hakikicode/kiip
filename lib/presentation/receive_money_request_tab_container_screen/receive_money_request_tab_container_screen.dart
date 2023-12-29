import 'package:flutter/material.dart';
import 'package:kiip/core/app_export.dart';
import 'package:kiip/presentation/receive_money_personal_page/receive_money_personal_page.dart';
import 'package:kiip/presentation/receive_money_request_page/receive_money_request_page.dart';
import 'package:kiip/widgets/app_bar/appbar_iconbutton_1.dart';
import 'package:kiip/widgets/app_bar/appbar_title.dart';
import 'package:kiip/widgets/app_bar/custom_app_bar.dart';

class ReceiveMoneyRequestTabContainerScreen extends StatefulWidget {
  const ReceiveMoneyRequestTabContainerScreen({Key? key}) : super(key: key);

  @override
  ReceiveMoneyRequestTabContainerScreenState createState() =>
      ReceiveMoneyRequestTabContainerScreenState();
}

// ignore_for_file: must_be_immutable
class ReceiveMoneyRequestTabContainerScreenState
    extends State<ReceiveMoneyRequestTabContainerScreen>
    with TickerProviderStateMixin {
  late TabController tabviewController;

  @override
  void initState() {
    super.initState();
    tabviewController = TabController(length: 2, vsync: this);
  }

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
                title: AppbarTitle(text: "Money Request")),
            body: SizedBox(
                width: mediaQueryData.size.width,
                child: SingleChildScrollView(
                    padding: getPadding(top: 34),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                              height: getVerticalSize(65),
                              width: getHorizontalSize(360),
                              decoration: BoxDecoration(
                                  color: appTheme.gray30001,
                                  borderRadius: BorderRadius.circular(
                                      getHorizontalSize(8))),
                              child: TabBar(
                                  controller: tabviewController,
                                  isScrollable: true,
                                  labelColor: theme.colorScheme.onPrimary,
                                  labelStyle: TextStyle(
                                      fontSize: getFontSize(20),
                                      fontFamily: 'Overpass',
                                      fontWeight: FontWeight.w800),
                                  unselectedLabelColor: appTheme.gray700,
                                  unselectedLabelStyle: TextStyle(
                                      fontSize: getFontSize(20),
                                      fontFamily: 'Overpass',
                                      fontWeight: FontWeight.w800),
                                  indicatorPadding: getPadding(all: 10.0),
                                  indicator: BoxDecoration(
                                      color: theme.colorScheme.primary,
                                      borderRadius: BorderRadius.circular(
                                          getHorizontalSize(4))),
                                  tabs: [
                                    Tab(child: Text("PERSONAL")),
                                    Tab(child: Text("Business"))
                                  ])),
                          SizedBox(
                              height: getVerticalSize(1038),
                              child: TabBarView(
                                  controller: tabviewController,
                                  children: [
                                    ReceiveMoneyPersonalPage(),
                                    ReceiveMoneyRequestPage()
                                  ]))
                        ])))));
  }

  /// Navigates back to the previous screen.
  ///
  /// This function takes a [BuildContext] object as a parameter, which is used
  /// to navigate back to the previous screen.
  onTapLocationone(BuildContext context) {
    Navigator.pop(context);
  }
}
