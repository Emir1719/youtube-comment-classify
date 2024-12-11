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
        String count = "0";
        Color? color, textColor;

        if (category == "All") {
          count = controller.comments?.length.toString() ?? "0";
        } else {
          count = controller.getCountByCategory(category).toString();
        }

        if (category == controller.selectedCategory) {
          color = context.color.primary;
          textColor = context.color.onPrimary;
        }

        return GestureDetector(
          onTap: () => controller.changeCategory(category),
          child: Container(
            decoration: BoxDecoration(
              color: color ?? context.color.surfaceContainerLowest,
              borderRadius: BorderRadius.circular(15),
            ),
            padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 15),
            margin: const EdgeInsets.only(right: 10),
            child: Text(
              "$category: $count",
              style: TextStyle(color: textColor ?? Colors.black),
            ),
          ),
        );
      },
    );
  }
}
