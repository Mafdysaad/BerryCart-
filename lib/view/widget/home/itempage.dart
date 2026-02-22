import 'package:ecommerce/controller/Home_controller/homepage_controller.dart';
import 'package:ecommerce/controller/Home_controller/homescreen_contriller.dart';
import 'package:ecommerce/core/class/handling_data_view.dart';
import 'package:ecommerce/data/modle/categoriesmodel.dart';
import 'package:ecommerce/view/widget/home/cateagoris_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';

class Itempage extends StatelessWidget {
  const Itempage({super.key, required this.id, required this.categoriesmodel});
  final int? id;
  final CategoriesModels categoriesmodel;

  @override
  Widget build(BuildContext context) {
    Get.find<Implament_hmescrenncontroller>();
    return GetBuilder<Implament_hmescrenncontroller>(
      builder: (controller) => HandlingDataRequst(
        statusrequst: controller.statusrequst,
        widget: Padding(
          padding: const EdgeInsets.all(10),
          child: CustomScrollView(
            slivers: [
              SliverToBoxAdapter(
                  child: Cateagoris_Slider(
                controller: controller,
              )),
              SliverGrid.builder(
                itemCount: 10,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 10,
                    crossAxisSpacing: 10,
                    childAspectRatio: 2 / 3),
                itemBuilder: (context, index) {
                  return Card(
                    elevation: 5,
                    color: Colors.white70,
                    shadowColor: Colors.black,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          flex: 3,
                          child: ClipRRect(
                            borderRadius: BorderRadiusGeometry.only(
                                topLeft: Radius.circular(20),
                                topRight: Radius.circular(20)),
                            child: Image.network(
                              width: double.infinity,
                              height: double.infinity,
                              'https://i.ytimg.com/an_webp/OUnrwNko6h0/mqdefault_6s.webp?du=3000&sqp=CMCG1ccG&rs=AOn4CLDQpxN6AM5i-ivgnRPhjH3FfaXiHA',
                              fit: BoxFit.fitHeight,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Expanded(
                            child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'hhhhhhhhhhhhhhh',
                            style: TextStyle(fontSize: 12),
                          ),
                        )),
                        SizedBox(
                          height: 5,
                        ),
                        Expanded(
                            child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'hhhhhiwekjhweewklewhewhwkkwwhehhewkwekewhewhewhhhhhhhhhhhsdheghgehehhhh',
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(fontSize: 12),
                          ),
                        )),
                        SizedBox(
                          height: 5,
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                                Text('\$${3800}'),
                                Spacer(),
                                IconButton(
                                    onPressed: () {},
                                    icon: Icon(
                                      Icons.favorite,
                                      color: Colors.blue,
                                    )),
                                SizedBox(
                                  height: 5,
                                )
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
