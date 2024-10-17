import 'package:flutter/material.dart';

import '../../utils/color.dart';

class CustomButton extends StatelessWidget {
  final String buttonName;
 final TextStyle? style;
  final double? height;
  final double? width;
  final Color? backgroundColor;
  final void Function()? onTap;
  const CustomButton({
    super.key,
     required this.size, this.style,
    required this.small,
    required this.buttonName,
    this.height,
    this.width,
 this.backgroundColor,
    this.onTap,
  });

  final Size size;
  final TextStyle? small;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap:onTap,
      child: Container(
        height:height?? size.height * .06,
        width:width?? size.width,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color:backgroundColor?? AppColors.primaryColor),
        child: Center(
            child: Text(buttonName,
          style:style?? small?.copyWith(
              fontSize: size.height * .025, color: AppColors.whiteColor),
        )),
      ),
    );
  }
}
