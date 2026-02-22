import 'package:ecommerce/controller/Home_controller/homescreen_contriller.dart';
import 'package:ecommerce/data/modle/categoriesmodel.dart';
import 'package:ecommerce/view/widget/linkApi.dart';
import 'package:flutter/material.dart';

import 'package:flutter_svg/svg.dart';

class Cateagoris_Slider extends StatelessWidget {
  const Cateagoris_Slider({super.key, required this.controller});
  final Implament_hmescrenncontroller controller;
  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      controller.restoreScrollPosition();
    });
    return SizedBox(
      key: PageStorageKey('value'),
      height: 180,
      child: ListView.builder(
        controller: controller.scrollController,
        scrollDirection: Axis.horizontal,
        itemCount: controller.categories.length,
        itemBuilder: (context, index) => Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child: InkWell(
              onTap: () {
                controller.gotocategoriesitems(
                    index, controller.categories[index]);

                controller.scrollto(
                    index,
                    MediaQuery.of(context).size.width * .12 + 50,
                    MediaQuery.of(context).size.width);
              },
              child: Cateagoris(
                categoriesModels: controller.categories[index],
                color: controller.categorid == index
                    ? Colors.blue
                    : const Color.fromARGB(179, 203, 200, 200),
              ),
            )),
      ),
    );
  }
}

class Cateagoris extends StatelessWidget {
  final CategoriesModels categoriesModels;
  final Color? color;
  const Cateagoris(
      {super.key, required this.categoriesModels, required this.color});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: MediaQuery.of(context).size.height * .12,
          height: MediaQuery.of(context).size.height * .1,
          decoration: BoxDecoration(color: color, shape: BoxShape.circle),
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: SvgPicture.network(
              "${Linkapi.Image_location}${categoriesModels.categoriesImage}",
              fit: BoxFit.contain,
            ),
          ),
        ),
        Expanded(
          child: Text('${categoriesModels.categoriesName}'),
        )
      ],
    );
  }
}
