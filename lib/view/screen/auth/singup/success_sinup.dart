import 'package:ecommerce/controller/auth_controller/singup_controller.dart';
import 'package:ecommerce/core/constant/lottieasset.dart';
import 'package:ecommerce/view/widget/auth/custombutton.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

class Success_singup extends StatelessWidget {
  const Success_singup({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('27'.tr),
          centerTitle: true,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Lottie.asset(
                LottieAsset.done,
                repeat: false,
                height: 300,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Text('46'.tr,
                  style: Theme.of(context).textTheme.displayLarge),
            ),
            Text('47'.tr, style: Theme.of(context).textTheme.titleMedium),
            const Spacer(),
            GetBuilder<implament_singup_controler>(
              builder: (controller) => Custombutton(
                  function: controller.back_to_login, tiltle: '32'.tr),
            ),
            const SizedBox(
              height: 30,
            )
          ],
        ));
  }
}
