import 'package:ecommerce/core/constant/binding.dart';

import 'package:ecommerce/core/localization/changlocal.dart';
import 'package:ecommerce/core/localization/translation.dart';

import 'package:ecommerce/core/services/services.dart';
import 'package:ecommerce/routes.dart';
import 'package:ecommerce/view/screen/languge.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initailizeservices();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    Localcontroller lancontroller = Get.put(Localcontroller());
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      translations: Mytranslation(),
      locale: lancontroller.langue,
      title: 'Flutter Demo',
      theme: lancontroller.appthem,
      home: const Languge(),
      getPages: pages,
      // initialBinding: Mybinding(),
      initialRoute: '',
    );
  }
}
