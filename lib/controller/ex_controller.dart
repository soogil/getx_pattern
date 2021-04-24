import 'package:get/get.dart';
import 'package:getx_pattern/data/model/ex_model.dart';
import 'package:getx_pattern/data/repository/ex_repository.dart';

class ExController extends GetxController {
  static ExController get to => Get.find(); // ExController.to로 UI 에서 접근 가능

  final ExRepository _exRepository = ExRepository();

  var _exModel = ExModel().obs;

  @override
  void onInit() async {
    // print('onInit ${_item.value.title}');
    _exModel.value = await _exRepository.readData;

    super.onInit();
  }

  String get id => _exModel.value.id ?? '';
  String get title => _exModel.value.title ?? '';
  String get body => _exModel.value.body ?? '';
}

class ExGetXService extends GetxService { // controller 와 차이는 초기화가 안돼서 전역? 으로 사용 가능 초기화 하고싶을땐 Get.reset() 사용
  static ExController get to => Get.find(); // ExController.to로 UI 에서 접근 가능

  final ExRepository _exRepository = ExRepository();

  var _exModel = ExModel().obs;

  @override
  void onInit() async {
    // print('onInit ${_item.value.title}');
    _exModel.value = await _exRepository.readData;

    super.onInit();
  }

  String get id => _exModel.value.id ?? '';
  String get title => _exModel.value.title ?? '';
  String get body => _exModel.value.body ?? '';
}