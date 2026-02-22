import 'package:ecommerce/core/class/crud.dart';
import 'package:ecommerce/core/class/statusrequst.dart';
import 'package:ecommerce/core/function/handlingdata.dart';
import 'package:ecommerce/data/datasource/remote_data/Homepagedata.dart';
import 'package:ecommerce/data/modle/categoriesmodel.dart';
import 'package:ecommerce/view/screen/homescreen.dart';
import 'package:ecommerce/view/widget/home/itempage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class HomescreenController extends GetxController {
  void changepage(int curantpage);
  void gotocategoriesitems(int index, CategoriesModels categorismodle);
  void datacategories();

  String? email;
  Statusrequst statusrequst = Statusrequst.none;
  Homepagedata homepagedata = Homepagedata(Get.put(crud()));
  List<CategoriesModels> categories = [];
  List descont = [];
}

class Implament_hmescrenncontroller extends HomescreenController {
  Color color = Colors.white;
  int currentpag = 0;
  int categorid = -1;
  double lastoffset = 0.0;
  CategoriesModels? categoriesmodle;
  final ScrollController scrollController = ScrollController();

  Widget get currentPageWidget {
    switch (currentpag) {
      case 0:
        return const Homescreen();
      case 1:
        return const Center(child: Text('Category'));
      case 2:
        return const SizedBox();
      case 3:
        return const Center(child: Text('Cart'));
      case 4:
        return const Center(child: Text('Favorite'));
      case 5:
        return Itempage(
          id: categorid,
          categoriesmodel: categoriesmodle!,
        );
      default:
        return const Center(child: Text('Unknown Page'));
    }
  }

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

  void scrollto(int index, double itemWidth, double screenWidth) {
    double offset = index * (itemWidth);
    WidgetsBinding.instance
        .addPostFrameCallback((_) => scrollController.animateTo(
              offset.clamp(
                scrollController.position.minScrollExtent,
                scrollController.position.maxScrollExtent,
              ),
              duration: const Duration(milliseconds: 500),
              curve: Curves.easeInOut,
            ));
  }

  @override
  void changepage(int index) {
    if (index != currentpag) {
      currentpag = index;
      update();
    }
  }

  @override
  void gotocategoriesitems(int index, CategoriesModels categorismodle) {
    currentpag = 5;
    categorid = index;
    categoriesmodle = categorismodle;
    update();
    print('=========== $categorid');
  }

  @override
  datacategories() async {
    Map<String, dynamic> respons = await homepagedata.getdata();
    statusrequst = handlingdata(respons);
    update();
    if (statusrequst == Statusrequst.success) {
      if (respons['status'] == 'success') {
        for (var i in respons['categories']) {
          categories.add(CategoriesModels.fromJson(i));
        }
        descont.addAll(respons["items"]);
      }
      update();
    }
  }

  void restoreScrollPosition() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (!scrollController.hasClients) {
        scrollController.jumpTo(lastoffset);
      }
    });
  }

  @override
  void onInit() {
    datacategories();
    scrollController.addListener(() {
      lastoffset = scrollController.offset;
    });
    super.onInit();
  }
}
