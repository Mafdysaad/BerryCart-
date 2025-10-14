import 'package:ecommerce/controller/Home_controller/homepage_controller.dart';
import 'package:ecommerce/controller/Home_controller/homescreen_contriller.dart';

import 'package:get/instance_manager.dart';

class Homebinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => Implament_hmescrenncontroller(), fenix: true);
    Get.lazyPut(() => implament_Homepagecontroller(), fenix: true);
  }
}
