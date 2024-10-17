import 'package:flutter/material.dart';

import '../../../utils/color.dart';

class CustomContainer extends StatelessWidget {
  final String text;
  final double? height;
  final double? width;
  final Color? color;
  final Color? backgroundColor;
  final TextStyle?style;
  const CustomContainer({
    super.key,
    required this.size,
    required this.small, required this.text, this.height, this.width, this.style, this.color, this.backgroundColor,
  });

  final Size size;
  final TextStyle? small;

  @override
  Widget build(BuildContext context) {
    return Container(
      height:height?? size.height*.03,
      width:width?? size.width*.25,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        color:backgroundColor?? AppColors.blueShade,
      ),
      child: Center(child: Text(text,style:style??small?.copyWith(color:color?? AppColors.blueColor) ,)),
    );
  }
}