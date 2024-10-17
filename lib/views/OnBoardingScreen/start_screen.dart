import 'package:e_commerce/routes/routes_name.dart';
import 'package:e_commerce/utils/color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../Widget/custom_button.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    var theme = Theme.of(context);
    var large = theme.textTheme.bodyLarge;
    var small = theme.textTheme.bodySmall;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "assets/images/star_image_icon.png",
            ),
            SizedBox(height: size.height*.03,),
            Text(
              "Shoppe",
              style: large,
            ),
            SizedBox(height: size.height*.03,),
            Text(
              "Beautifully Ecommerce UI kit \n"
              "        for your online store",
              style: small?.copyWith(fontSize: size.height * .02),
            ),
            SizedBox(height: size.height*.1,),
            CustomButton(
              size: size,
              small: small,
              buttonName: " Let's get started",
              onTap: () => Get.toNamed(RoutesName.createAccountScreen),
            ),
            SizedBox(height: size.height*.03,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text("I already have an account", style: small),
                Image.asset("assets/images/Button.png"),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
