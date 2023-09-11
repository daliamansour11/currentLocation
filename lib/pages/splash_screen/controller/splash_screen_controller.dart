import 'package:get/get.dart';

import '../../login_screen/view/Screen/LoginScreen.dart';


class SplashScreenController extends GetxController {
  Future openSplashScreen() async {
    await Future.delayed(const Duration(seconds: 5),
        (){
          Get.to(()=> LoginScreen());
        }
    );

  }

}