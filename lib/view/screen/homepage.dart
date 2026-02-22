import 'package:ecommerce/controller/Home_controller/homepage_controller.dart';
import 'package:ecommerce/controller/Home_controller/homescreen_contriller.dart';
import 'package:ecommerce/view/widget/home/custom_apper.dart';

import 'package:ecommerce/view/widget/home/custom_button.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:get/get_state_manager/get_state_manager.dart';

class Homepage extends GetView<HomescreenController> {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<Implament_hmescrenncontroller>(
      builder: (controller) => Scaffold(
          floatingActionButton: FloatingActionButton(
            backgroundColor: Colors.blue,
            onPressed: () {},
            shape: const CircleBorder(),
            child: const Icon(Icons.add_shopping_cart, size: 30),
          ),
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerDocked,
          bottomNavigationBar: BottomAppBar(
            height: 110,
            notchMargin: 8,
            shape: const CircularNotchedRectangle(),
            color: Colors.amberAccent,
            child: Row(
                children: List.generate(
                    5,
                    (index) => index == 2
                        ? Spacer()
                        : Expanded(
                            child: CustomButton_for_appBar(
                            icon: controller.icon[index],
                            name_ofcateagoris: controller.title[index],
                            onPressed: () {
                              controller.changepage(index);
                            },
                            color: controller.currentpag == index
                                ? Colors.blue
                                : Colors.white,
                            scale: controller.currentpag == index ? 1.3 : .9,
                          )))),
          ),
          backgroundColor: Colors.white,
          appBar: CustomAppBar(
            onpressdsearch: () {},
            onpressdnotification: () {},
          ),
          body: controller.currentPageWidget),
    );
  }
}
