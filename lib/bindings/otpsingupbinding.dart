import 'package:ecommerce/controller/auth_controller/otp_singup_cintroller.dart';
import 'package:get/get.dart';

class OtpSignupBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => Implament_Otpsinup_controller());
  }
}
