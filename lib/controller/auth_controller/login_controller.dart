import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:ecommerce/core/class/crud.dart';
import 'package:ecommerce/core/class/statusrequst.dart';
import 'package:ecommerce/core/constant/Approutes.dart';
import 'package:ecommerce/core/function/handlingdata.dart';
import 'package:ecommerce/core/services/services.dart';
import 'package:ecommerce/data/datasource/remote_data/auth/login.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:firebase_core/firebase_core.dart';

abstract class Login_controll extends GetxController {
  gotosingpage();
  changeobsec();
  gotoforgetpassword();

  savedata();
}

class Implament_login_controler extends Login_controll {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  bool obsec = true;
  GlobalKey<FormState> formkey = GlobalKey();
  Statusrequst statusrequst = Statusrequst.none;
  Login_data login_data = Login_data(Get.put(crud()));
  Myservices myservices = Get.find();
  @override
  gotosingpage() {
    Get.toNamed(
      Approutes.singup,
    );
  }

  @override
  changeobsec() {
    obsec = !obsec;
    update();
  }

  @override
  savedata() async {
    if (formkey.currentState!.validate()) {
      statusrequst = Statusrequst.loading;
      update();
      var respons = await login_data.login_data(email.text, password.text);
      statusrequst = handlingdata(respons);
      if (statusrequst == Statusrequst.success) {
        if (respons['status'] == 'success') {
          myservices.sharedpref.setString('id', respons['data']['user_id']);
          myservices.sharedpref
              .setString('username', respons['data']['user_name']);
          myservices.sharedpref
              .setString('email', respons['data']['user_email']);
          myservices.sharedpref
              .setString('phone', respons['data']['user_phone']);
          myservices.sharedpref.setString('step', '2');
          Get.offNamed(Approutes.homepage);
        } else {
          Get.defaultDialog(
              title: 'error', middleText: 'wrong email or password');
        }
      } else {
        return Statusrequst.oflinefailure;
      }
    } else {
      print('notokay');
    }
    update();
  }

  @override
  void onInit() {
    FirebaseMessaging.instance.getToken().then((value) {
      print('=====================================$value');
    });
    super.onInit();
  }

  @override
  void dispose() {
    email.dispose();
    password.dispose();
    super.dispose();
  }

  @override
  gotoforgetpassword() {
    Get.offNamed(Approutes.send_otp);
  }
}
