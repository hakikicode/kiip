import 'package:flutter/material.dart';
import 'package:kiip/core/app_export.dart';

// ignore: must_be_immutable
class HistoryItemWidget extends StatelessWidget {
  const HistoryItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "",
              style: theme.textTheme.titleSmall,
            ),
            Text(
              "",
              style: CustomTextStyles.bodySmallBluegray700_1,
            ),
          ],
        ),
        Padding(
          padding: getPadding(
            top: 10,
            bottom: 16,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Amount",
                style: theme.textTheme.bodyMedium,
              ),
              Padding(
                padding: getPadding(
                  left: 6,
                ),
                child: Text(
                  "480",
                  style: CustomTextStyles.titleSmallBold,
                ),
              ),
              Spacer(),
              Padding(
                padding: getPadding(
                  top: 2,
                ),
                child: Text(
                  "",
                  style: CustomTextStyles.labelLargeGreenA70001,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
