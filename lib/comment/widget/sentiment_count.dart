import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:youtube_comment_classify/comment/comment_controller.dart';
import 'package:youtube_comment_classify/core/config/context_extension.dart';

class SentimentCount extends StatelessWidget {
  const SentimentCount({super.key, required this.category});
  final String category;

  @override
  Widget build(BuildContext context) {
    return GetBuilder<CommentController>(
      builder: (controller) {
        var count = controller.getCountByCategory(category).toString();

        return Container(
          decoration: BoxDecoration(
            color: context.color.surfaceContainerLowest,
            borderRadius: BorderRadius.circular(15),
          ),
          padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 15),
          margin: const EdgeInsets.only(right: 15),
          child: Text("$category: $count"),
        );
      },
    );
  }
}
