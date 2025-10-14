import 'package:ecommerce/controller/auth_controller/login_controller.dart';
import 'package:get/get.dart';


class Loginbinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => Implament_login_controler());
  }
}
