import 'package:ecommerce/controller/Home_controller/homepage_controller.dart';
import 'package:ecommerce/controller/Home_controller/homescreen_contriller.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomButton_for_appBar extends StatelessWidget {
  final IconData? icon;
  final String name_ofcateagoris;
  final Function()? onPressed;
  final Color color;
  final double scale;
  const CustomButton_for_appBar(
      {super.key,
      required this.icon,
      required this.name_ofcateagoris,
      required this.onPressed,
      required this.color,
      required this.scale});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<implament_Homepagecontroller>(
      builder: (controller) => MaterialButton(
        onPressed: onPressed,
        child: AnimatedScale(
          duration: const Duration(milliseconds: 200),
          scale: scale,
          child: Column(mainAxisSize: MainAxisSize.min, children: [
            Icon(
              icon,
              size: 40,
              color: color,
            ),
            FittedBox(
              fit: BoxFit.scaleDown,
              child: Text(
                name_ofcateagoris,
                style: TextStyle(fontSize: 16, color: color),
              ),
            )
          ]),
        ),
      ),
    );
  }
}
