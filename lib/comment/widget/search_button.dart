import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:youtube_comment_classify/comment/comment_controller.dart';

class SearchButton extends StatelessWidget {
  const SearchButton({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<CommentController>();

    return Padding(
      padding: const EdgeInsets.only(right: 20),
      child: IconButton(
        onPressed: controller.onTab,
        tooltip: "Analiz Et",
        icon: const Icon(Icons.search),
      ),
    );
  }
}
