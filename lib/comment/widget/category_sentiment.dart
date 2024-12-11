import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:youtube_comment_classify/comment/comment_controller.dart';
import 'package:youtube_comment_classify/comment/widget/sentiment_count.dart';

class CategorySentiment extends StatelessWidget {
  const CategorySentiment({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<CommentController>(
      builder: (controller) {
        return Row(
          children: controller.categories.map((e) => SentimentCount(category: e)).toList(),
        );
      },
    );
  }
}
