import 'package:get/get.dart';
import 'package:getx_pattern/data/model/ex_model.dart';
import 'package:getx_pattern/data/repository/ex_repository.dart';

class ExController extends GetxController {
  final ExRepository _exRepository = ExRepository();

  late ExModel _item;

  @override
  void onInit() async {
    print('onInit ${_item.title}');

    super.onInit();
  }

  var counter = 0.obs;

  void increment() => counter.value++;

  change() {
    update();
  }

  Future get data async => await _exRepository.readData;

  String get id => _item.id;
  String get title => _item.title;
  String get body => _item.body;
}