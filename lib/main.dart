import 'package:e_commerce/routes/routes_name.dart';
import 'package:e_commerce/routes/routes_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const Ecommerce());
}
class Ecommerce extends StatelessWidget {
  const Ecommerce({super.key});

  @override
  Widget build(BuildContext context) {
    final size =MediaQuery.sizeOf(context);
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme: TextTheme(
            bodyLarge: TextStyle(
                color:Color(0xFF000000),
                fontSize: size.height*.05,
                fontWeight:FontWeight.w800
            ),
          bodyMedium: TextStyle(
            color:Color(0xFF000000),
            fontSize: size.height*.03,
            fontWeight:FontWeight.w600
          ),
          bodySmall: TextStyle(
              color:const Color(0xFF000000),
              fontSize: size.height*.02,
              fontWeight:FontWeight.w300
          )
        )
      ),
      getPages:RoutesPage.routes,
      initialRoute: RoutesName.startScreen,
    );
  }
}

