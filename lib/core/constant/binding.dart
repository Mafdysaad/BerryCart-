import 'package:ecommerce/controller/Home_controller/homepage_controller.dart';
import 'package:ecommerce/controller/reset_password/check_email_controller.dart';
import 'package:ecommerce/controller/auth_controller/login_controller.dart';
import 'package:ecommerce/controller/reset_password/otp_controller.dart';
import 'package:ecommerce/controller/auth_controller/otp_singup_cintroller.dart';
import 'package:ecommerce/controller/reset_password/resatpassword_controller.dart';
import 'package:ecommerce/controller/auth_controller/singup_controller.dart';

import 'package:ecommerce/controller/onbording_controller.dart';

import 'package:ecommerce/core/class/crud.dart';

import 'package:ecommerce/view/screen/homepage.dart';
import 'package:get/get.dart';

class Mybinding implements Bindings {
  Mybinding._instance();
 
  @override
  void dependencies() {
    Get.lazyPut(() => Implament_onbording_controler());
    Get.lazyPut(() => implament_singup_controler());
    Get.lazyPut(() => Implament_Check_controller());
    Get.lazyPut(() => Implament_Otp_controller());
    Get.lazyPut(() => Implament_Resatepassword());
    Get.lazyPut(() => Implament_login_controler());
    Get.lazyPut(() => Implament_Otpsinup_controller());
    Get.lazyPut(() => crud());
    Get.lazyPut(() => implament_Homepagecontroller());

    // Get.put(Implament_onbording_controler());
    // Get.put(implament_singup_controler());
    // Get.put(Implament_Check_controller());
    // Get.put(Implament_Otp_controller());
    // Get.put(Implament_Resatepassword());
    // Get.put(Implament_login_controler());
    // Get.put(Implament_Otpsinup_controller());
    // Get.put(crud());
    // Get.put(Homepage());
  }
}
