import 'package:get/get.dart';
import 'package:getx_pattern/data/model/ex_model.dart';
import 'package:getx_pattern/data/repository/ex_repository.dart';

class ExController extends GetxController {
  final ExRepository _exRepository = ExRepository();

  var _exModel = ExModel().obs;
  var counter = 0.obs;

  @override
  void onInit() async {
    // print('onInit ${_item.value.title}');
    _exModel.value = await _exRepository.readData;

    super.onInit();
  }

  void increment() => counter.value++;

  String get id => _exModel.value.id ?? '';
  String get title => _exModel.value.title ?? '';
  String get body => _exModel.value.body ?? '';
}