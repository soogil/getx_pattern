
//todo api call GetConnect 사용
import 'package:getx_pattern/data/model/ex_model.dart';

class ExProvider implements AbsProvider {
  @override
  Future create() async {
    try {
      return await Future.delayed(Duration(milliseconds: 1000)).then((value) => value);
    } catch (e) {
      throw Exception(e);
    }
  }

  @override
  Future delete() async {
    try {
      return await Future.delayed(Duration(milliseconds: 1000)).then((value) => value);
    } catch (e) {
      throw Exception(e);
    }
  }

  @override
  Future<ExModel> read() async {
    try {
      return await Future.delayed(Duration(milliseconds: 1000)).then((value) => ExModel.fromJson({
        'id': 'id 입니다.',
        'title': 'title 입니다.',
        'body': 'body 입니다.',
      }));
    } catch (e) {
      throw Exception(e);
    }
  }

  @override
  Future update() async {
    try {
      return await Future.delayed(Duration(milliseconds: 1000)).then((value) => value);
    } catch (e) {
      throw Exception(e);
    }
  }
}


abstract class AbsProvider {
  Future create();

  Future read();

  Future update();

  Future delete();
}