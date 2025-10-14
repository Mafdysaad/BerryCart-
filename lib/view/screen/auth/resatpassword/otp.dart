import 'package:ecommerce/controller/reset_password/otp_controller.dart';
import 'package:ecommerce/core/class/handling_data_view.dart';

import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:ecommerce/view/widget/auth/resatepassword/customhead.dart';
import 'package:ecommerce/view/widget/auth/resatepassword/custompragraph.dart';

import 'package:flutter/material.dart';

import 'package:get/get.dart';

class Otp extends StatelessWidget {
  const Otp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('22'.tr),
          centerTitle: true,
        ),
        body: GetBuilder<Implament_Otp_controller>(
            builder: (controller) => HandlingDataRequst(
                statusrequst: controller.statusrequst,
                widget: ListView(
                  children: [
                    Custompragraph(
                      contant: '23'.tr,
                    ),
                    Customhead(
                      contant: '24'.tr,
                    ),
                    OtpTextField(
                      showFieldAsBox: true,
                      margin: const EdgeInsets.only(top: 10, bottom: 40),
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      fieldHeight: 70,
                      fieldWidth: 60,
                      textStyle: const TextStyle(fontSize: 34, height: 1),
                      numberOfFields: 5,
                      onSubmit: (value) => controller.gotoresatepassword(value),
                    ),
                  ],
                ))));
  }
}
