import 'package:flutter/material.dart';

import '../../../utils/color.dart';
import 'CustomContainer.dart';

class RowWidget extends StatelessWidget {
  const RowWidget({
    super.key,
    required this.size,
    required this.small,
  });

  final Size size;
  final TextStyle? small;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Image.asset(
                "assets/images/circle_image/circle_image_one.png"),
            SizedBox(
              width: size.width * .05,
            ),
            CustomContainer(
              size: size,
              small: small,
              text: 'My Activity',
              height: size.height * .03,
              width: size.width * .3,
              color: AppColors.whiteColor,
              backgroundColor: AppColors.primaryColor,
            ),
          ],
        ),
        Row(
          children: [
            Image.asset("assets/images/icon_image/icon_one.png"),
            Image.asset("assets/images/icon_image/icon_two.png"),
            Image.asset("assets/images/icon_image/icon_three.png"),
          ],
        ),
      ],
    );
  }
}