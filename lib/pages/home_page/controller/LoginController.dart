
 import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class  HomeController extends GetxController{
 RxBool isvisible = false.obs;
 var formKey ;

 @override
  void onInit() {
   toggle();
      super.onInit();
  }
   toggle() {
    isvisible != isvisible;


}
 void submit() {
  final isValid = formKey.currentState!.validate();
  if (!isValid) {
   return;
  }
  formKey.currentState!.save();
 }
}