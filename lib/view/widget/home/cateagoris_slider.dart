import 'package:ecommerce/controller/Home_controller/homepage_controller.dart';
import 'package:ecommerce/data/modle/categoriesmodel.dart';
import 'package:ecommerce/view/widget/linkApi.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class Cateagoris_Slider extends GetView<implament_Homepagecontroller> {
  const Cateagoris_Slider({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<implament_Homepagecontroller>(
      builder: (controller) => SizedBox(
          height: 180,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: controller.categories.length,
            itemBuilder: (context, index) => Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5),
                child: Cateagoris(
                  categoriesModels: controller.categories[index],
                )),
          )),
    );
  }
}

class Cateagoris extends StatelessWidget {
  final CategoriesModels categoriesModels;
  const Cateagoris({super.key, required this.categoriesModels});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 120,
          height: 100,
          decoration: BoxDecoration(
              color: const Color.fromARGB(179, 203, 200, 200),
              shape: BoxShape.circle),
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
