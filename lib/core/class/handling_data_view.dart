import 'package:ecommerce/core/class/statusrequst.dart';
import 'package:ecommerce/core/constant/lottieasset.dart';

import 'package:flutter/widgets.dart';
import 'package:lottie/lottie.dart';

class HandlingDataRequst extends StatelessWidget {
  late Statusrequst statusrequst;
  final Widget widget;
  HandlingDataRequst(
      {super.key, required this.statusrequst, required this.widget});

  @override
  Widget build(BuildContext context) {
    return statusrequst == Statusrequst.loading
        ? Center(
            child: Lottie.asset(
              LottieAsset.loading,
              width: 300,
              height: 300,
            ),
          )
        : statusrequst == Statusrequst.oflinefailure
            ? Center(
                child: Lottie.asset(
                  LottieAsset.notfound,
                  width: 300,
                  height: 300,
                ),
              )
            : statusrequst == Statusrequst.serverfailure
                ? Center(
                    child: Lottie.asset(LottieAsset.serverfaulier,
                        width: 300, height: 300, fit: BoxFit.fill),
                  )
                : widget;
  }
}
