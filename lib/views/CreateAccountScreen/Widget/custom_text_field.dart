import 'package:flutter/material.dart';

import '../../../utils/color.dart';


class CustomTextField extends StatelessWidget {
  final String hintText;
  final Widget? suffixIcon;
  final Widget? row;

  const CustomTextField({
    super.key, required this.hintText, this.suffixIcon, this.row,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
          hintText:hintText,
          suffixIcon:suffixIcon,
          hintStyle: const TextStyle(
            color: Color(0xFFD2D2D2),
            fontSize:14
          ),
          fillColor: AppColors.greyColor,
          filled: true,
          border: const OutlineInputBorder(
            borderSide: BorderSide.none,
          )
      ),
    );
  }
}