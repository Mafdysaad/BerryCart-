import 'dart:ui';

import 'package:ecommerce/controller/Home_controller/homepage_controller.dart';
import 'package:ecommerce/data/modle/items.dart';
import 'package:ecommerce/view/widget/linkApi.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class ItemsOffers extends GetView<implament_Homepagecontroller> {
  const ItemsOffers({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<implament_Homepagecontroller>(
      builder: (controller) => SizedBox(
        height: 130,
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: controller.descont.length,
            itemBuilder: (context, index) => Padding(
                  padding: const EdgeInsets.all(10),
                  child: items(
                      Items_model:
                          items_model.fromJson(controller.descont[index])),
                )),
      ),
    );
  }
}

class items extends StatelessWidget {
  final items_model Items_model;
  const items({super.key, required this.Items_model});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        onTap: () {},
        child: Stack(children: [
          Container(
            width: 160,
            decoration: BoxDecoration(
                color: const Color.fromARGB(179, 203, 200, 200),
                borderRadius: BorderRadius.circular(20)),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Image.network(
                "${Linkapi.Image_location}${Items_model.itemsImage}",
                fit: BoxFit.contain,
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
