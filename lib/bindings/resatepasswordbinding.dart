import 'package:ecommerce/controller/reset_password/resatpassword_controller.dart';
import 'package:get/get.dart';

class Resatepasswordbinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => Implament_Resatepassword());
  }
}
