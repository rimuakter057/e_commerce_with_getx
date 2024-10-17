import 'package:e_commerce/routes/routes_name.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          ElevatedButton(onPressed: ()=>Get.toNamed(RoutesName.startScreen),
              child:Text("data",style: TextStyle(

              ),))
        ],
      ),
    );
  }
}
