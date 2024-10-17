import 'package:flutter/material.dart';

class SeeAllWidget extends StatelessWidget {
  final String text;
  const SeeAllWidget({
    super.key,
    required this.medium,
    required this.size, required this.text,
  });

  final TextStyle? medium;
  final Size size;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          text,
          style: medium,
        ),
        Row(
          children: [
            Text(
              "See All",
              style: medium?.copyWith(fontWeight: FontWeight.w400),
            ),
            SizedBox(
              width: size.width*0.03,
            ),
            Image.asset("assets/images/Button.png"),
          ],
        ),
      ],);
  }
}