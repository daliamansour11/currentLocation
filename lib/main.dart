import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:current_location/pages/current_location_page/view/map_screen.dart';
import 'package:current_location/pages/home_page/view/Screen/home_screen.dart';
import 'package:current_location/pages/login_screen/view/Screen/LoginScreen.dart';
import 'package:current_location/pages/splash_screen/view/splash_screen.dart';
import 'package:current_location/utilities/app_contants.dart';
import 'package:current_location/utilities/themes/app_images.dart';
import 'package:current_location/utilities/themes/theme_manager.dart';
import 'package:current_location/utilities/translations/locales/app_localization.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:get/get_navigation/src/routes/transitions_type.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.

    @override
    Widget build(BuildContext context) {
      return GetMaterialApp(
        translations: AppLocalization(),
        locale: Get.deviceLocale,
        fallbackLocale: const Locale('ar'),
        debugShowCheckedModeBanner: false,
        title: AppConstants.appName.tr,
        theme: ThemeManager.getLightAppTheme(context),

        defaultTransition: Transition.topLevel,
        home:AnimatedSplashScreen(
            duration: 2000,
            splash: AppImages.logo,
            nextScreen: LoginScreen(),

          splashTransition: SplashTransition.fadeTransition,
         // pageTransitionType: PageTransitionType.topToBottomPop,
            ),
        getPages: [
          GetPage(name:"/splashScreen", page: ()=>LoginScreen()),
          GetPage(name:"/loginScreen", page: ()=>LoginScreen())
          ,GetPage(name:"/homeScreen", page: ()=>HomeScreen(userName: '',))
           ,GetPage(name:"/mapScreen", page: ()=>MapScreen())
        ],
       // initialRoute:"/splashScreen" ,

      );


  }
}


