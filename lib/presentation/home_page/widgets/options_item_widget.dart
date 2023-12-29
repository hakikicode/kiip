import 'package:flutter/material.dart';
import 'package:kiip/core/app_export.dart';
import 'package:kiip/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class OptionsItemWidget extends StatelessWidget {
  OptionsItemWidget({
    Key? key,
    this.onTapOne,
  }) : super(
          key: key,
        );

  VoidCallback? onTapOne;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTapOne?.call();
      },
      child: Container(
        padding: getPadding(
          left: 20,
          top: 26,
          right: 20,
          bottom: 26,
        ),
        decoration: AppDecoration.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomIconButton(
              height: getSize(35),
              width: getSize(35),
              padding: getPadding(
                all: 8,
              ),
              decoration: IconButtonStyleHelper.fillRed,
              child: CustomImageView(
                svgPath: ImageConstant.imgPlay,
              ),
            ),
            Padding(
              padding: getPadding(
                top: 19,
              ),
              child: Text(
                "",
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: theme.textTheme.titleLarge!.copyWith(
                  height: 1.30,
                ),
              ),
            ),
            Padding(
              padding: getPadding(
                top: 10,
                bottom: 3,
              ),
              child: Text(
                "",
                style: CustomTextStyles.bodyMediumBluegray70001,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
