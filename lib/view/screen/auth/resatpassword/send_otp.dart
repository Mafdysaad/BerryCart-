import 'package:ecommerce/controller/reset_password/check_email_controller.dart';

import 'package:ecommerce/core/class/handling_data_view.dart';
import 'package:ecommerce/core/function/validinput.dart';
import 'package:ecommerce/view/widget/auth/custombutton.dart';
import 'package:ecommerce/view/widget/auth/customform.dart';

import 'package:ecommerce/view/widget/auth/resatepassword/customhead.dart';
import 'package:ecommerce/view/widget/auth/resatepassword/custompragraph.dart';

import 'package:flutter/material.dart';

import 'package:get/get.dart';

class Send_otp extends StatelessWidget {
  const Send_otp({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('19'.tr),
          centerTitle: true,
        ),
        body: GetBuilder<Implament_Check_controller>(
            builder: (controller) => HandlingDataRequst(
                statusrequst: controller.statusrequst,
                widget: Form(
                  key: controller.formkey,
                  child: ListView(
                    children: [
                      Custompragraph(
                        contant: '20'.tr,
                      ),
                      Customhead(
                        contant: '38'.tr,
                      ),
                      customfiled(
                          suffixicon: const Icon(Icons.email_outlined),
                          title: '35'.tr,
                          hint: '36'.tr,
                          validator: (val) {
                            return validInput(val!, 30, 8, 'email');
                          },
                          texteditngcontroller: controller.email,
                          autovalidatemode: AutovalidateMode.onUserInteraction),
                      Custombutton(
                        function: controller.savedata,
                        tiltle: '21'.tr,
                      ),
                    ],
                  ),
                ))));
  }
}
