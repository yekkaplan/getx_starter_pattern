import 'package:flutter/cupertino.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:getx_starter_pattern/core/routes/app_pages.dart';
import 'package:getx_starter_pattern/core/routes/app_routes.dart' show Routes;

import 'core/init/theme/app_theme_light.dart';

void main() {
  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: Routes.INITIAL,
      theme: AppThemeLight.instance.theme,
      getPages: AppPages.pages,
    ),
  );
}

