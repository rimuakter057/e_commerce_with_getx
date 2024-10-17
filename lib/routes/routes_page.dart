import 'package:e_commerce/routes/routes_name.dart';
import 'package:e_commerce/views/CreateAccountScreen/create_account_screen.dart';
import 'package:e_commerce/views/HomeScreen/home_screen.dart';
import 'package:e_commerce/views/OnBoardingScreen/start_screen.dart';
import 'package:e_commerce/views/ProfileScreen/profile_screen.dart';
import 'package:get/get.dart';

import '../views/CreateAccountScreen/login_screen.dart';

class RoutesPage {
static List <GetPage<dynamic>> routes = [
  GetPage(name: RoutesName.homeScreen,
      page: ()=>HomeScreen()),
   GetPage(name: RoutesName.startScreen, page:()=>StartScreen()),
  GetPage(name:RoutesName.createAccountScreen,
      page:()=>CreateAccountScreen()),
  GetPage(name:RoutesName.loginScreen,
      page:()=>LoginScreen()),
  GetPage(name: RoutesName.profileScreen, page:()=>ProfileScreen()),


];
}