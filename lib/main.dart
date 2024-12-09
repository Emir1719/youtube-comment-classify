import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:youtube_comment_classify/comment/comment_page.dart';
import 'package:youtube_comment_classify/core/config/dependency_injection.dart';

void main() async {
  await setup();
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: CommentPage(),
    );
  }
}
