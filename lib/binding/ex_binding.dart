import 'package:get/get.dart';
import 'package:getx_pattern/controller/ex_controller.dart';

class ExBinding implements Bindings {
  @override
  void dependencies() {
    Get.put<ExController>(ExController()); // 뷰가 생성될때 같이 생성됨
    // Get.lazyPut<ExController>(() => ExController()); // controller 사용할때 이니셜라이즈
    // Get.putAsync(() => null); // 데이터를 미리 받아오거나 가공처리 후 그 다음에 뷰를 그려야될때 사용
    // Get.create(() => null);  // lazy put 이랑 같지만 controller 를 사용할때마다 계속 생성함(new) refresh? 사용처가 애매
  }
}