import 'package:flutter/material.dart';
import 'package:kiip/core/app_export.dart';

// ignore: must_be_immutable
class Profile1ItemWidget extends StatelessWidget {
  const Profile1ItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: getHorizontalSize(60),
      child: CustomImageView(
        imagePath: ImageConstant.imgEllipse11,
        height: getSize(60),
        width: getSize(60),
        radius: BorderRadius.circular(
          getHorizontalSize(30),
        ),
      ),
    );
  }
}
