import 'package:ecommerce/controller/reset_password/otp_controller.dart';
import 'package:get/get.dart';

class Sendotpbinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => Implament_Otp_controller());
  }
}
