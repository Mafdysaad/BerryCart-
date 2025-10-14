import 'package:ecommerce/controller/auth_controller/singup_controller.dart';
import 'package:ecommerce/controller/reset_password/resatpassword_controller.dart';
import 'package:get/get.dart';

class SuccessSignUpBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => implament_singup_controler());
  }
}
