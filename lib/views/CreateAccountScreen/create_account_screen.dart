import 'package:e_commerce/utils/color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../routes/routes_name.dart';
import '../Widget/custom_button.dart';
import 'Widget/custom_text_field.dart';

class CreateAccountScreen extends StatelessWidget {
  const CreateAccountScreen({super.key});
  

  @override
  Widget build(BuildContext context) {
    final size =MediaQuery.sizeOf(context);
    var small = Theme.of(context).textTheme.bodySmall;
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: size.height*.05,),
              Text(
                "Created \n Account",
                style: Theme.of(context).textTheme.bodyLarge,
              ),
              SizedBox(height: size.height*.02,),
              Image.asset(
                "assets/images/Upload_Photo.png",
              ),
              SizedBox(height: size.height*.04,),
              const CustomTextField(
                hintText: 'Email',
              ),
              SizedBox(height: size.height*.02,),
              const CustomTextField(
                hintText: 'Password',
                suffixIcon: Icon(Icons.visibility_off_outlined),
              ),
              SizedBox(height: size.height*.02,),
              Row(
                children: [
                  Image.asset("assets/images/FLAG.png"),
                  const Icon(Icons.arrow_drop_down_outlined),
                  Image.asset("assets/images/Line 29.png"),
                  const Expanded(
                    child: CustomTextField(
                      hintText: 'Your number',
                    
                    ),
                  ),
                ],
              ),
              SizedBox(height: size.height*.06,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CustomButton(small: small, buttonName: "Done", size: size,
                    onTap: () => Get.toNamed(RoutesName.loginScreen),
                  ),
                  SizedBox(height: size.height*.01,),
                  Text("Cancel",style: small,),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
