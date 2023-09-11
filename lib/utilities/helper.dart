//
// import 'package:get/get_core/src/get_main.dart';
//
// ///The horizontal extent of this size.
// double get width => size.width;
//
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';


bool isSmallPhone() {
  if (Get.size.height<= 592) {
    return true;
  } else {
    return false;
  }
}
bool isMediumPhone() {
  ///[was changed to 760 to include ]
  if (Get.size.height >= 592 && Get.size.height <= 760) {
    return true;
  } else {
    return false;
  }
}

bool isBigPhone() {
  if (Get.size.height >= 761 && Get.size.height <= 930) {
    return true;
  } else {
    return false;
  }
}

extension IntExtension on int {
  double toAdaptivePhone({double value = .7}) {
    return isSmallPhone() ? toDouble() * value.toDouble() : toDouble();
  }
}