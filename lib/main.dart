import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_pattern/binding/ex_binding.dart';
import 'package:getx_pattern/routes/route_names.dart';
import 'package:getx_pattern/routes/route_page.dart';
import 'package:getx_pattern/ui/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: RouteNames.INITIAL,
      initialBinding: ExBinding(),
      // theme: appThemeData,
      defaultTransition: Transition.fade,
      getPages: RoutePages.routes,
      home: HomePage(),
      // locale: Locale('pt', 'BR'), => local language
      // translationsKeys: AppTranslation
      //     .translations,
    );
  }
}