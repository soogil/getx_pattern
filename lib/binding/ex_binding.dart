import 'package:get/get.dart';
import 'package:getx_pattern/controller/ex_controller.dart';

class ExBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ExController>(() => ExController());
  }
}