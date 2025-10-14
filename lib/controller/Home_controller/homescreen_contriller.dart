import 'package:ecommerce/view/screen/homescreen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class HomescreenController extends GetxController {
  void changepage(int curantpage);
}

class Implament_hmescrenncontroller extends HomescreenController {
  int currentpag = 0;
  Color color = Colors.white;
  List<Widget> pages = [
    const Homescreen(),
    const Center(child: Text('category')),
    const SizedBox(),
    const Center(child: Text('cart')),
    const Center(child: Text('favorite')),
  ];
  List<String> title = [
    'Home',
    'Category',
    '',
    'Cart',
    'Favorite',
  ];
  List<IconData?> icon = [
    Icons.home,
    Icons.settings,
    null,
    Icons.shopping_cart,
    Icons.favorite,
  ];

  @override
  void changepage(int index) {
    if (index != currentpag) {
      currentpag = index;
      update();
    }
  }
}
