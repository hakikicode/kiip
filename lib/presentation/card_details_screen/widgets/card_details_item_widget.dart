import 'package:flutter/material.dart';
import 'package:kiip/core/app_export.dart';
import 'package:kiip/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class CardDetailsItemWidget extends StatelessWidget {
  const CardDetailsItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: getPadding(
        left: 16,
        top: 12,
        right: 16,
        bottom: 12,
      ),
      decoration: AppDecoration.white,
      child: Row(
        children: [
          CustomIconButton(
            height: getSize(56),
            width: getSize(56),
            padding: getPadding(
              all: 16,
            ),
            decoration: IconButtonStyleHelper.fillGray1,
            child: CustomImageView(
              svgPath: ImageConstant.imgCart,
            ),
          ),
          Padding(
            padding: getPadding(
              left: 12,
              top: 4,
              bottom: 3,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "",
                  style: CustomTextStyles.titleMedium18,
                ),
                Text(
                  "",
                  style: CustomTextStyles.bodyMedium13,
                ),
              ],
            ),
          ),
          Spacer(),
          Padding(
            padding: getPadding(
              top: 3,
              right: 46,
              bottom: 25,
            ),
            child: Text(
              "",
              style: CustomTextStyles.titleMediumDeeporangeA700,
            ),
          ),
        ],
      ),
    );
  }
}
