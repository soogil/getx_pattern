import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_pattern/controller/ex_controller.dart';

class HomePage extends GetView<ExController> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(),
      body: _buildBody(),
    );
  }

  PreferredSizeWidget _appBar() {
    return AppBar();
  }

  Widget _buildBody() {
    // ExController.to.body 로 접근 가능

    return Obx(
      () => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(controller.id),
          Text(controller.title),
          Text(controller.body),
        ],
      ),
    );
  }
}