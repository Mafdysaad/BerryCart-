import 'package:ecommerce/controller/onbording_controller.dart';
import 'package:get/get.dart';


class Onbordingbinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(()=>Implament_onbording_controler());
  }
}
