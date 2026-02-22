import 'package:ecommerce/bindings/homebinding.dart';
import 'package:ecommerce/bindings/loginbinding.dart';
import 'package:ecommerce/bindings/onbordingbinding.dart';
import 'package:ecommerce/bindings/otpbinding.dart';
import 'package:ecommerce/bindings/otpsingupbinding.dart';
import 'package:ecommerce/bindings/resatepasswordbinding.dart';
import 'package:ecommerce/bindings/sendotpbinding.dart';
import 'package:ecommerce/bindings/singupbinding.dart';
import 'package:ecommerce/bindings/successresatpasswordbinding.dart';
import 'package:ecommerce/core/constant/Approutes.dart';

import 'package:ecommerce/view/screen/auth/resatpassword/send_otp.dart';
import 'package:ecommerce/view/screen/auth/login.dart';
import 'package:ecommerce/view/screen/auth/resatpassword/otp.dart';
import 'package:ecommerce/view/screen/auth/resatpassword/resatepassword.dart';
import 'package:ecommerce/view/screen/auth/resatpassword/Success_resatpassword.dart';
import 'package:ecommerce/view/screen/auth/singup/success_sinup.dart';
import 'package:ecommerce/view/screen/auth/singup/otp_singUp.dart';
import 'package:ecommerce/view/screen/auth/singup/singup.dart';
import 'package:ecommerce/view/screen/homepage.dart';
import 'package:ecommerce/view/screen/languge.dart';

import 'package:ecommerce/view/screen/onbording.dart';

import 'package:get/get.dart';

List<GetPage<dynamic>>? pages = [
  GetPage(
      name: '/',
      page: () => Homepage(),
      // middlewares: [mymiddleware()],
      binding: Homebinding()),
  // page: () => const Languge(),
  GetPage(
      name: Approutes.login,
      page: () => const Login(),
      binding: Loginbinding()),
  GetPage(
      name: Approutes.onbording,
      page: () => const OnBording(),
      binding: Onbordingbinding()),
  GetPage(
      name: Approutes.singup,
      page: () => const Singup(),
      binding: Singupbinding()),
  GetPage(
      name: Approutes.resatepassword,
      page: () => const Resatepassword(),
      binding: Resatepasswordbinding()),
  GetPage(
      name: Approutes.send_otp,
      page: () => const Send_otp(),
      binding: Sendotpbinding()),
  GetPage(name: Approutes.otp, page: () => const Otp(), binding: Otpbinding()),
  GetPage(
      name: Approutes.Success_resatpassword,
      page: () => const Success_resatpassword(),
      binding: Successresatpasswordbinding()),
  GetPage(
      name: Approutes.Success_singup,
      page: () => const Success_singup(),
      binding: Singupbinding()),
  GetPage(
      name: Approutes.Otp_singup,
      page: () => const Otp_singup(),
      binding: OtpSignupBinding()),
  GetPage(
    name: Approutes.homepage,
    page: () => Homepage(),
  ),
];
