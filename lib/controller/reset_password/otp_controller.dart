import 'package:ecommerce/core/class/crud.dart';
import 'package:ecommerce/core/class/statusrequst.dart';
import 'package:ecommerce/core/constant/Approutes.dart';
import 'package:ecommerce/core/function/handlingdata.dart';
import 'package:ecommerce/data/datasource/remote_data/resetpassword/checke_otp.dart';

import 'package:get/get.dart';

abstract class Otp_controller extends GetxController {
  String? email;

  Statusrequst statusrequst = Statusrequst.none;
  checke_otp checke = checke_otp(Get.put(crud()));
  gotoresatepassword(String otp);
}

class Implament_Otp_controller extends Otp_controller {
  @override
  gotoresatepassword(String otp) async {
    var respons = await checke.checke_verfiycode(otp, email!);
    statusrequst = handlingdata(respons);
    if (statusrequst == Statusrequst.success) {
      if (respons['status'] == 'success') {
        Get.offNamed(Approutes.resatepassword, arguments: {"email": email});
      } else {
        Get.defaultDialog(title: 'error', middleText: 'Invalid OTP Code');
      }
      update();
    }
  }

  @override
  void onInit() {
    email = Get.arguments["email"];
    super.onInit();
  }

  @override
  void dispose() {
    super.dispose();
  }
}
