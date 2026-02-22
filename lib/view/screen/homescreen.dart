import 'package:ecommerce/controller/Home_controller/homepage_controller.dart';
import 'package:ecommerce/controller/Home_controller/homescreen_contriller.dart';

import 'package:ecommerce/core/class/handling_data_view.dart';
import 'package:ecommerce/view/widget/home/cateagoris_slider.dart';

import 'package:ecommerce/view/widget/home/custom_title.dart';
import 'package:ecommerce/view/widget/home/items_offers.dart';
import 'package:ecommerce/view/widget/home/offers_screan.dart';

import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class Homescreen extends GetView<HomescreenController> {
  const Homescreen({super.key});
  @override
  Widget build(BuildContext context) {
    return GetBuilder<Implament_hmescrenncontroller>(
      builder: (controller) => HandlingDataRequst(
        statusrequst: controller.statusrequst,
        widget: Padding(
          padding: const EdgeInsets.all(10),
          child: ListView(
            children: [
              const OffersScrean(
                  title: 'A Summer Surpris', body: 'Cashback 20%'),
              Cateagoris_Slider(
                controller: controller,
              ),
              const CustomTitle(title: 'Prodect for you ?'),
              const ItemsOffers(),
              const CustomTitle(title: '50% off'),
              const ItemsOffers(),
            ],
          ),
        ),
      ),
    );
  }
}
