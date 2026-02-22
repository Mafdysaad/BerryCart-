import 'package:ecommerce/core/class/crud.dart';
import 'package:ecommerce/core/class/statusrequst.dart';
import 'package:ecommerce/core/function/handlingdata.dart';
import 'package:ecommerce/data/datasource/remote_data/Homepagedata.dart';

import 'package:ecommerce/data/modle/categoriesmodel.dart';

import 'package:get/get.dart';

abstract class HomepageController extends GetxController {
  void datacategories();

  String? email;
  Statusrequst statusrequst = Statusrequst.none;
  Homepagedata homepagedata = Homepagedata(Get.put(crud()));
  List<CategoriesModels> categories = [];
  List descont = [];
}

class implament_Homepagecontroller extends HomepageController {
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

  @override
  void onInit() {
    datacategories();

    super.onInit();
  }
}
