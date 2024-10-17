

import 'package:e_commerce/views/Widget/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../routes/routes_name.dart';
import 'Widget/custom_text_field.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    var large = theme.textTheme.bodyLarge;
    var small = theme.textTheme.bodySmall;
    final size= MediaQuery.sizeOf(context);
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "assets/images/circle_image/circle_image_four.png",
            ),
            Text("Login",style: large,),
            SizedBox(height: size.height*.02,),
            Row(
              children: [
                Text("Good to see you back! ",
                  style: small?.copyWith(fontSize: size.height * .02),),
                const Icon(Icons.favorite)
              ],
            ),
            SizedBox(height: size.height*.02,),
            const CustomTextField(
              hintText: 'Email',
            ),
            SizedBox(height: size.height*.02,),
            Column(
              children: [
                CustomButton(size: size, small: small, buttonName:"Next",
                  onTap: () => Get.toNamed(RoutesName.profileScreen),
                ),
                SizedBox(height: size.height*.01,),
                Text("Cancel",style: small,),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
