import 'package:dartz/dartz.dart';
import 'package:ecommerce/core/class/crud.dart';
import 'package:ecommerce/core/class/statusrequst.dart';

import 'package:ecommerce/view/widget/linkApi.dart';

class Getitems {
  final crud curd;
  const Getitems(this.curd);

  Future<Object> featchitems(String itemid) async {
    Either<Statusrequst, Map> respos =
        await curd.postdata(Linkapi.items, {'item_id': itemid});

    return respos.fold((l) => l, (r) => r);
  }
}
