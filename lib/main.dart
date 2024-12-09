import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:youtube_comment_classify/core/config/app_route.dart';
import 'package:youtube_comment_classify/core/config/dependency_injection.dart';
import 'package:youtube_comment_classify/core/theme/app_color_scheme.dart';
import 'package:youtube_comment_classify/core/theme/app_theme.dart';

void main() async {
  await setup();
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      getPages: AppRoute.route(),
      initialRoute: AppRoute.home,
      theme: AppTheme(AppColorScheme.light).theme(),
    );
  }
}
