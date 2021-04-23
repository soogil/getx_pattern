import 'package:get/get.dart';
import 'package:getx_pattern/routes/route_names.dart';
import 'package:getx_pattern/ui/home_page.dart';

class RoutePages {

  static final routes = [
    GetPage(name: RouteNames.INITIAL, page:()=> HomePage()),
  ];
}