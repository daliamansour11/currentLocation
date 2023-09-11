
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../utilities/themes/app_images.dart';
import '../../../widgets/current_location_text_label.dart';
import '../controller/splash_screen_controller.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:GetBuilder<SplashScreenController>(
        init: SplashScreenController(), builder: (navController) {
          return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(AppImages.logo,scale: 2,),
             Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50),
              child: CurrentLocationTextLabel(
                labelText:"appName".tr,
                labelStyle: Theme.of(context).textTheme.headlineLarge,
              ),
            ),
          ],
        ),
      );
    })
    );
  }
}
