import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_pattern/controller/ex_controller.dart';


// class HomePage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: _appBar(),
//       body: _buildBody(),
//     );
//   }
//
//   PreferredSizeWidget _appBar() {
//     return AppBar();
//   }
//
//   Widget _buildBody() {
//     return GetX(
//       builder: (DisposableInterface controller) {
//         return Container();
//       },
//     );
//   }
// }


class HomePage extends GetView {

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
    return GetX<ExController>(
      init: ExController(),
      builder: (controller) {
        return FutureBuilder(
          future: controller.data,
          builder: (context, snapShot) {
            if(snapShot.connectionState == ConnectionState.waiting) {
              return CircularProgressIndicator();
            }

            return Column(
              children: [
                Text(controller.id),
                Text(controller.title),
                Text(controller.body),
              ],
            );
          },
        );
      },
    );
  }
}