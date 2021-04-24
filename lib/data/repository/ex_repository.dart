import 'package:getx_pattern/data/model/ex_model.dart';
import 'package:getx_pattern/data/provider/ex_provider.dart';

class ExRepository {
  final ExProvider _exProvider = ExProvider();

  Future get createData => _exProvider.create();

  Future<ExModel> get readData async => await _exProvider.read();

  Future get updateData => _exProvider.update();

  Future get deleteData => _exProvider.delete2();


//todo ~~ 필요한 api 연결 및 데이터 가공
}