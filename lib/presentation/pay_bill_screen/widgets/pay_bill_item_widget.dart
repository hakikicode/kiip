import 'package:flutter/material.dart';
import 'package:kiip/core/app_export.dart';
import 'package:kiip/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class PayBillItemWidget extends StatelessWidget {
  PayBillItemWidget({
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
          left: 16,
          top: 15,
          right: 16,
          bottom: 15,
        ),
        decoration: AppDecoration.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            CustomIconButton(
              height: getSize(35),
              width: getSize(35),
              margin: getMargin(
                left: 4,
                top: 10,
              ),
              padding: getPadding(
                all: 8,
              ),
              decoration: IconButtonStyleHelper.fillYellowA,
              child: CustomImageView(
                svgPath: ImageConstant.imgLightbulbOnprimary,
              ),
            ),
            Padding(
              padding: getPadding(
                top: 18,
              ),
              child: Text(
                "",
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: theme.textTheme.titleLarge!.copyWith(
                  height: 1.30,
                ),
              ),
            ),
            Padding(
              padding: getPadding(
                top: 14,
              ),
              child: Text(
                "Pay bill of this month",
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: CustomTextStyles.bodyMedium15.copyWith(
                  height: 1.33,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
