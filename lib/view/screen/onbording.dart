import 'package:ecommerce/view/widget/onbording/customslider.dart';
import 'package:ecommerce/view/widget/onbording/customcontroller.dart';

import 'package:flutter/material.dart';

import '../widget/onbording/custombottoum.dart';

class OnBording extends StatelessWidget {
  const OnBording({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: SafeArea(
            child: Column(
      children: [
        Expanded(flex: 3, child: Customslideronbording()),
        Expanded(
          flex: 1,
          child: Column(
            children: [
              Customdotonbording(),
              Spacer(
                flex: 1,
              ),
              Padding(
                padding: EdgeInsets.all(15),
                child: Custombutton(),
              ),
            ],
          ),
        ),
      ],
    )));
  }
}
