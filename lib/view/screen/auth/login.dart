import 'package:ecommerce/controller/auth_controller/login_controller.dart';
import 'package:ecommerce/core/class/handling_data_view.dart';

import 'package:ecommerce/core/function/validinput.dart';

import 'package:ecommerce/view/widget/auth/customform.dart';
import 'package:ecommerce/view/widget/auth/customformpassword.dart';
import 'package:ecommerce/view/widget/auth/customlogo.dart';
import 'package:ecommerce/view/widget/auth/customoption.dart';
import 'package:ecommerce/view/widget/auth/customsprator.dart';
import 'package:ecommerce/view/widget/auth/customtext.dart';

import 'package:ecommerce/view/widget/auth/custonsinup.dart';

import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../widget/auth/custombutton.dart';

class Login extends StatelessWidget {
  const Login({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('12'.tr),
          centerTitle: true,
        ),
        body: GetBuilder<Implament_login_controler>(
            builder: (controller) => HandlingDataRequst(
                  statusrequst: controller.statusrequst,
                  widget: Form(
                    key: controller.formkey,
                    child: ListView(
                      children: [
                        const Logo(
                          path: 'assets/images/logo.png',
                        ),
                        customfiled(
                          title: '10'.tr,
                          hint: '34'.tr,
                          validator: (val) {
                            return validInput(val!, 30, 8, 'email');
                          },
                          texteditngcontroller: controller.email,
                          suffixicon: const Icon(
                            fill: 1,
                            Icons.email_outlined,
                            size: 28,
                          ),
                        ),
                        custofildpass(
                          title: '39'.tr,
                          hint: '40'.tr,
                          validator: (val) {
                            return null;

                            //return validInput(val!, 12, 8, 'password');
                          },
                          texteditngcontroller: controller.password,
                        ),
                        Customtext(
                            contant: '17'.tr,
                            function: () {
                              controller.gotoforgetpassword();
                            }),
                        Custombutton(
                          function: () {
                            controller.savedata();
                          },
                          tiltle: '14'.tr,
                        ),
                        const Custom_OR(),
                        const Customoption(),
                        Cusomsingup(
                          textone: '18'.tr,
                          textwo: '16'.tr,
                          onTap: () {
                            controller.gotosingpage();
                          },
                        )
                      ],
                    ),
                  ),
                )));
  }
}
