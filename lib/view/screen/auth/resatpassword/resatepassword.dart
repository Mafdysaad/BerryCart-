import 'package:ecommerce/controller/reset_password/resatpassword_controller.dart';
import 'package:ecommerce/core/class/handling_data_view.dart';
import 'package:ecommerce/core/function/validinput.dart';
import 'package:ecommerce/view/widget/auth/custombutton.dart';

import 'package:ecommerce/view/widget/auth/customformpassword.dart';
import 'package:ecommerce/view/widget/auth/resatepassword/customhead.dart';
import 'package:ecommerce/view/widget/auth/resatepassword/custompragraph.dart';

import 'package:flutter/material.dart';

import 'package:get/get.dart';

class Resatepassword extends StatelessWidget {
  const Resatepassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('25'.tr),
        centerTitle: true,
      ),
      body: GetBuilder<Implament_Resatepassword>(
          builder: (controller) => HandlingDataRequst(
              statusrequst: controller.statusrequst,
              widget: Form(
                key: controller.formkey,
                child: ListView(
                  children: [
                    Custompragraph(contant: '26'.tr),
                    Customhead(contant: '45'.tr),
                    custofildpass(
                        title: '39'.tr,
                        hint: '40'.tr,
                        validator: (val) {
                          return validInput(val!, 14, 8, 'password');
                        },
                        texteditngcontroller: controller.password,
                        autovalidatemode: AutovalidateMode.onUserInteraction),
                    custofildpass(
                        title: '41'.tr,
                        hint: '42'.tr,
                        validator: (val) {
                          return validInput(
                              val!, 14, 8, 'confirmpassword_resat',
                              combering: controller.password.text);
                        },
                        texteditngcontroller: controller.confirmpassword,
                        autovalidatemode: AutovalidateMode.onUserInteraction),
                    Custombutton(
                      function: controller.savedata,
                      tiltle: '43'.tr,
                    ),
                  ],
                ),
              ))),
    );
  }
}
